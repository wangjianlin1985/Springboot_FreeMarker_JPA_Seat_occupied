package com.yuanlrc.base.controller.admin;

import com.yuanlrc.base.bean.CodeMsg;
import com.yuanlrc.base.bean.PageBean;
import com.yuanlrc.base.bean.Result;

import com.yuanlrc.base.entity.admin.Student;
import com.yuanlrc.base.entity.admin.User;
import com.yuanlrc.base.service.admin.*;
import com.yuanlrc.base.util.SessionUtil;
import com.yuanlrc.base.util.StringUtil;
import com.yuanlrc.base.util.ValidateEntityUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@RequestMapping("/stu")
@Controller
public class StudentController {
    @Autowired
   private StudentService studentService;

    @Autowired
    private  ClazzService clazzService;
    @RequestMapping(value="/list")
    public String list(Model model, Student student, PageBean<Student> pageBean){
        model.addAttribute("title", "学生列表");
        if (student.getUser()!=null){
            model.addAttribute("name", student.getUser().getNickName());
        }
        model.addAttribute("pageBean", studentService.findByName(student, pageBean));
        return "admin/student/list";
    }

    /**
     * 学生修改
     * @param model
     * @param id
     * @return
     */
    @RequestMapping(value="/edit",method=RequestMethod.GET)
    public String edit(Model model,@RequestParam(name="id")Long id){
        model.addAttribute("clazzs",clazzService.findAll());
        model.addAttribute("student", studentService.findByID(id));
        return "admin/student/edit";
    }

    /**
     * 学生添加页面
     * @param
     * @return
     */
    @RequestMapping(value="/add",method= RequestMethod.GET)
    public String add(Model model){
        model.addAttribute("clazzs",clazzService.findAll());
        return "admin/student/add";
    }

    @RequestMapping(value="delete",method= RequestMethod.POST)
    @ResponseBody
    public Result delete(long id){
        try {
            studentService.delete(id);
        } catch (Exception e) {

            return Result.error(CodeMsg.ADMIN_ROLE_DELETE_ERROR);
        }

        return Result.success(true);
    }
    @RequestMapping(value="get",method= RequestMethod.POST)
    @ResponseBody
    public Result get(long id){
        return Result.success(studentService.findByID(id));
    }


    /**
     * 编辑信息表单提交处理
     * @param
     * @return
     */
    @RequestMapping(value="/add",method=RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> add(Student student){
        CodeMsg validate = ValidateEntityUtil.validate(student);
        if(validate.getCode() != CodeMsg.SUCCESS.getCode()){
            return Result.error(validate);
        }

        if (!StringUtil.emailFormat(student.getUser().getEmail())){
            return   Result.error(CodeMsg.ADMIN_PUBLIC_EMAIL);
        }
        if (!StringUtil.isMobile(student.getUser().getMobile())){
            return   Result.error(CodeMsg.ADMIN_PUBLIC_MOBILE);
        }
        /**
         * 有id是修改需要判断
         * 无id是增加无需判断
         */
        if (student.getId()!=null){
            //用统一验证实体方法验证是否合法
            //到这说明一切符合条件，进行数据库保存
            studentService.update(student);
        }else {
            //学生学号
            studentService.add(student);
        }
        return Result.success(true);
    }





}
