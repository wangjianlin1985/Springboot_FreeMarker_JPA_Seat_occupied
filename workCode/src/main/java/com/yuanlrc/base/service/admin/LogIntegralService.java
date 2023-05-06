package com.yuanlrc.base.service.admin;

import com.yuanlrc.base.bean.PageBean;
import com.yuanlrc.base.dao.admin.LogIntegralDao;
import com.yuanlrc.base.entity.admin.LogIntegral;
import com.yuanlrc.base.entity.admin.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogIntegralService {
    @Autowired
  private   LogIntegralDao logIntegralDao;
    @Autowired
    private  StudentService studentService;

  public   List<LogIntegral> findByStudent(Student student){

    return  logIntegralDao.findByStudent(student);
    }

    public   List<LogIntegral> findByStudentId(Long id){

        return  logIntegralDao.findByStudent_Id(id);
    }

    /**
     * 日志添加/编辑操作
     * @param
     * @return
     */
    public LogIntegral save(LogIntegral logIntegral){
        Student byID = studentService.findByID(logIntegral.getStudent().getId());
        /**
         * 减去信誉积分
         */
        byID.setStudentCredits(byID.getStudentCredits()-logIntegral.getGrade());
        /**
         * 加上信誉积分
         */
        int  num=byID.getStudentCredits()+logIntegral.getBonusPoints();
        byID.setStudentCredits(num>100?100:num);
        /**
         * 更新信用积分
         */
        studentService.save(byID);
        return logIntegralDao.save(logIntegral);
    }

    /**
     * 日志分页查询列表
     * @param logIntegral
     * @param pageBean
     * @return
     */
    public PageBean<LogIntegral> findList(LogIntegral logIntegral, PageBean<LogIntegral> pageBean){
        ExampleMatcher withMatcher = ExampleMatcher.matching().withMatcher("student", ExampleMatcher.GenericPropertyMatchers.contains());
        withMatcher = withMatcher.withIgnorePaths("student.studentCredits","student.clbum","student.user","grade","bonusPoints");
        Example<LogIntegral> example = Example.of(logIntegral, withMatcher);
        Pageable pageable = PageRequest.of(pageBean.getCurrentPage()-1, pageBean.getPageSize());
        Page<LogIntegral> findAll = logIntegralDao.findAll(example, pageable);
        pageBean.setContent(findAll.getContent());
        pageBean.setTotal(findAll.getTotalElements());
        pageBean.setTotalPage(findAll.getTotalPages());
        return pageBean;
    }



    /**
     * 按照用户id删除
     * @param id
     */
    public void delete(Long id){
        logIntegralDao.deleteById(id);
    }

}
