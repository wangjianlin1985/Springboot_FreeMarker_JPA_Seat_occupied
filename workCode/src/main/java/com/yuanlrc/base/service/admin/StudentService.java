package com.yuanlrc.base.service.admin;

import com.yuanlrc.base.bean.PageBean;
import com.yuanlrc.base.dao.admin.StudentDao;
import com.yuanlrc.base.entity.admin.Role;
import com.yuanlrc.base.entity.admin.Student;
import com.yuanlrc.base.entity.admin.User;
import com.yuanlrc.base.util.SessionUtil;
import com.yuanlrc.base.util.StringUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class StudentService {
    @Autowired
    private StudentDao studentDao;

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;


    public Student findByID(Long id) {
        /**
         * 使用jpa自带的方法
         *         studentDao.getOne();当我查询一个不存在的id数据时，直接抛出异常，因为它返回的是一个引用，简单点说就是一个代理对象
         *         studentDao.findOne() 当我查询一个不存在的id数据时，返回的值是null.
         *         studentDao.findById(id) ; .findById(id).get()使用时，如果数据库中查询无符合条件的记录便会抛出异常
         */

        Optional<Student> byId = studentDao.findById(id);

        return byId.isPresent() ? byId.get() : null;
    }

    public List<Student> findAll() {
        return studentDao.findAll();
    }

    /**
     * 删除一个学生删除的时候需要先查出来相对的用户的id
     * 先删除学生然后再删除相对应的用户
     *
     * @param id
     */
    public void delete(long id) {
        Student byID = findByID(id);
        studentDao.deleteById(id);
        userService.delete(byID.getUser().getId());
    }

    /**
     * 保存学生
     * 用户需要固定一个学生的角色
     *
     * @param student
     * @return
     */
    @Transactional
    public Student add(Student student) {
        Role role = roleService.find(Student.STUDENT_ROLE_ENABLE);
        String s = StringUtil.generateSn(Student.STUDENT_BIRTHDAY_ENABLE);
        student.setStudentSno(s);
        student.getUser().setPassword(s);
        student.getUser().setUsername(s);
        student.getUser().setRole(role);
        User user = student.getUser();
        User save = userService.save(user);
        student.setUser(save);
        return studentDao.save(student);
    }
    public Student save(Student student) {
        return studentDao.save(student);
    }


    /**
     * 修改学生
     * @param student
     * @return
     */
    @Transactional
    public Student update(Student student) {
        Student byID = findByID(student.getId());
        byID.setClazz(student.getClazz());
        byID.setStudentBirthday(student.getStudentBirthday());
        User user = student.getUser();
        //讲提交的用户信息指定字段复制到已存在的user对象中,该方法会覆盖新字段内容
        BeanUtils.copyProperties(user,byID.getUser(), "id","createTime","updateTime","password","username","role");
        userService.save(byID.getUser());
        return studentDao.save(byID);
    }

    /**
     * 分页按角色名称搜索角色列表
     *
     * @param student
     * @param pageBean
     * @return
     */
    public PageBean<Student> findByName(Student student, PageBean<Student> pageBean) {
        ExampleMatcher withMatcher = ExampleMatcher.matching().withMatcher("user.nickName", ExampleMatcher.GenericPropertyMatchers.contains());
        withMatcher = withMatcher.withIgnorePaths("studentCredits", "clazz", "user.role", "user.status", "user.sex", "user.student", "user.teacher");
        Example<Student> example = Example.of(student, withMatcher);
        Pageable pageable = PageRequest.of(pageBean.getCurrentPage() - 1, pageBean.getPageSize());
        Page<Student> findAll = studentDao.findAll(example, pageable);
        pageBean.setContent(findAll.getContent());
        pageBean.setTotal(findAll.getTotalElements());
        pageBean.setTotalPage(findAll.getTotalPages());
        return pageBean;
    }

    /**
     * 获取user的id查询
     * @return
     */
    public Student findByLoginUser(){
        Long userId = SessionUtil.getLoginedUser().getId();
        return studentDao.findByUser_Id(userId);
    }
}
