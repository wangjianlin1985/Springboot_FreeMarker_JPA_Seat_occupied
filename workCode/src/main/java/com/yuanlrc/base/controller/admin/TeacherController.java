package com.yuanlrc.base.controller.admin;

import com.yuanlrc.base.bean.CodeMsg;
import com.yuanlrc.base.bean.PageBean;
import com.yuanlrc.base.bean.Result;
import com.yuanlrc.base.entity.admin.Teacher;
import com.yuanlrc.base.entity.admin.User;
import com.yuanlrc.base.service.admin.TeacherService;
import com.yuanlrc.base.service.admin.TeacherTypeService;
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

@RequestMapping("/tea")
@Controller
public class TeacherController {

    @Autowired
    private TeacherService teacherService;
    @Autowired
 private TeacherTypeService teacherTypeService;

    @RequestMapping(value = "/list")
    public String list(Model model, Teacher teacher, PageBean<Teacher> pageBean) {
        model.addAttribute("title", "教师列表");
        if (teacher.getUser() != null) {
            model.addAttribute("name", teacher.getUser().getNickName());
        }
        model.addAttribute("pageBean", teacherService.findByName(teacher, pageBean));
        return "admin/teacher/list";
    }

    /**
     * 教师修改
     *
     * @param model
     * @param id
     * @return
     */
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(Model model, @RequestParam(name = "id") Long id) {
        model.addAttribute("teacherTypes",teacherTypeService.findAll());
        model.addAttribute("teacher", teacherService.findByID(id));
        return "admin/teacher/edit";
    }

    /**
     * 教师添加页面
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(Model model) {
        model.addAttribute("teacherTypes",teacherTypeService.findAll());
        return "admin/teacher/add";
    }

    @RequestMapping(value = "delete", method = RequestMethod.POST)
    @ResponseBody
    public Result delete(long id) {
        try {
            teacherService.delete(id);
        } catch (Exception e) {

            return Result.error(CodeMsg.ADMIN_ROLE_DELETE_ERROR);
        }

        return Result.success(true);
    }

    /**
     * 编辑信息表单提交处理
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> add(Teacher teacher) {
        CodeMsg validate = ValidateEntityUtil.validate(teacher);
        if (validate.getCode() != CodeMsg.SUCCESS.getCode()) {
            return Result.error(validate);
        }

        if (!StringUtil.emailFormat(teacher.getUser().getEmail())){
            return   Result.error(CodeMsg.ADMIN_PUBLIC_EMAIL);
        }
        if (!StringUtil.isMobile(teacher.getUser().getMobile())){
            return   Result.error(CodeMsg.ADMIN_PUBLIC_MOBILE);
        }
        /**
        /**
         * 有id是修改需要判断
         * 无id是增加无需判断
         */
        if (teacher.getId() != null) {
            //用统一验证实体方法验证是否合法
            //到这说明一切符合条件，进行数据库保存
            Teacher byID = teacherService.findByID(teacher.getId());
            byID.setTeacherType(teacher.getTeacherType());
            User user = teacher.getUser();
            //讲提交的用户信息指定字段复制到已存在的user对象中,该方法会覆盖新字段内容
            BeanUtils.copyProperties(user, byID.getUser(), "id", "createTime", "updateTime", "password", "username", "role","status");
            teacherService.update(byID);
        } else {
            //学生学号
            teacherService.add(teacher);
        }
        return Result.success(true);
    }

}
