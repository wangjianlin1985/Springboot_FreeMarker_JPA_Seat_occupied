package com.yuanlrc.base.controller.admin;

import com.yuanlrc.base.bean.CodeMsg;
import com.yuanlrc.base.bean.PageBean;
import com.yuanlrc.base.bean.Result;
import com.yuanlrc.base.entity.admin.LogIntegral;
import com.yuanlrc.base.entity.admin.Student;
import com.yuanlrc.base.service.admin.LogIntegralService;
import com.yuanlrc.base.service.admin.StudentService;
import com.yuanlrc.base.util.SessionUtil;
import com.yuanlrc.base.util.ValidateEntityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@RequestMapping("/log")
@Controller
public class LogIntegralController {
    @Autowired
    private LogIntegralService logIntegralService;
    @Autowired
    private StudentService studentService;
    @RequestMapping(value="/list")
    public String list(Model model, Student student, PageBean<Student> pageBean){
        model.addAttribute("title", "积分列表");
        if (student.getUser()!=null){
            model.addAttribute("name", student.getUser().getNickName());
        }
        model.addAttribute("pageBean", studentService.findByName(student, pageBean));
        return "admin/logIntegral/list";
    }


    /**
     * 查出该学生的所有日志
     * @param
     * @return
     */
    @RequestMapping(value="/logs")
    @ResponseBody
    public Result logList(LogIntegral logIntegral, PageBean<LogIntegral> pageBean){
        List<LogIntegral> byStudentId = logIntegralService.findByStudentId(logIntegral.getStudent().getId());
        return Result.success(byStudentId);
    }
    /**
     * 查出当前学生的所有日志
     * @param
     * @return
     */
    @RequestMapping(value="/stuList")

    public String stuList(LogIntegral logIntegral, PageBean<LogIntegral> pageBean,Model model){
        model.addAttribute("title", "我的信用积分");
        Student byLoginUser = studentService.findByLoginUser();
        logIntegral.setStudent(byLoginUser);
        model.addAttribute("pageBean",logIntegralService.findList(logIntegral,pageBean));
        return "admin/logIntegral/stuList";
    }
    @RequestMapping(value="/add",method= RequestMethod.GET)
    public String add(Model model,Long id){

        return "admin/logIntegral/add";
    }

    @RequestMapping(value="delete",method= RequestMethod.POST)
    @ResponseBody
    public Result delete(long id){
        try {
            logIntegralService.delete(id);
        } catch (Exception e) {

            return Result.error(CodeMsg.ADMIN_ROLE_DELETE_ERROR);
        }

        return Result.success(true);
    }


    /**
     * 编辑信息表单提交处理
     * @param
     * @return
     */
    @RequestMapping(value="/add",method=RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> add(LogIntegral logIntegral){
        CodeMsg validate = ValidateEntityUtil.validate(logIntegral);
        if(validate.getCode() != CodeMsg.SUCCESS.getCode()){
            return Result.error(validate);
        }

        if (logIntegral.getStudent().getId()==null|| logIntegral.getStudent().getId()==0){
            /**
             * 如果学生数据为空的话
             * 错误数据
             */
            return Result.error(CodeMsg.DATA_ERROR);
        }
        Student byID = studentService.findByID(logIntegral.getStudent().getId());
        if (logIntegral.getGrade()>byID.getStudentCredits()){
            /**
             * 如果扣除的分数比学生分数还多的话返回一个错误
             */
            return Result.error(CodeMsg.ADMIN_LOFINTEGRAL_CREDITS);
        }

          logIntegralService.save(logIntegral);

        return Result.success(true);
    }
}
