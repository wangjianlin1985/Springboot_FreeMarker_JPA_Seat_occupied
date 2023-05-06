package com.yuanlrc.base.controller.admin;


import com.yuanlrc.base.bean.CodeMsg;
import com.yuanlrc.base.bean.PageBean;
import com.yuanlrc.base.bean.Result;
import com.yuanlrc.base.dao.admin.ClazzDao;

import com.yuanlrc.base.entity.admin.Clazz;
import com.yuanlrc.base.service.admin.ClazzService;
import com.yuanlrc.base.service.admin.OperaterLogService;
import com.yuanlrc.base.service.admin.TeacherService;
import com.yuanlrc.base.util.ValidateEntityUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/clbum")
@Controller
public class ClazzController {

    @Autowired
    private ClazzDao clazzDao;
    @Autowired
    private ClazzService clazzService;
    @Autowired
    private TeacherService teacherService;

    @Autowired
    private OperaterLogService operaterLogService;

    /**
     * 班级列表页面
     * @param model
     * @param clazz
     * @param pageBean
     * @return
     */
    @RequestMapping(value="/list")
    public String list(Model model, Clazz clazz, PageBean<Clazz> pageBean){
        model.addAttribute("title", "班级列表");
        model.addAttribute("teacher" , teacherService.findAll());
        model.addAttribute("claname", clazz.getClaname());
        model.addAttribute("pageBean",clazzService.findList(clazz,pageBean));
        return "admin/clbum/list";
    }

    /**
     * 添加班级页面
     * @param model
     * @return
     */
    @RequestMapping(value="/add",method= RequestMethod.GET)
    public String add(Model model){
        model.addAttribute("teachers",teacherService.findAll());
        model.addAttribute("clazz", clazzService.findAll());
        return "admin/clbum/add";
    }

    /**
     * 班级添加表单提交处理
     * @param clazz
     * @return
     */
    @RequestMapping(value="/add",method=RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> add(Clazz clazz){
        //用统一验证实体方法验证是否合法
        CodeMsg validate = ValidateEntityUtil.validate(clazz);
        if(validate.getCode() != CodeMsg.SUCCESS.getCode()){
            return Result.error(validate);
        }
        if(clazz.getTeacher() == null || clazz.getTeacher().getTeacherSno() == null){
            return Result.error(CodeMsg.ADMIN_ClAZZ_EMPTY );
        }
        //判断班级名是否存在
        if(clazzService.isExistClaName(clazz.getClaname(), 0l)){
            return Result.error(CodeMsg.ADMIN_ClAZZNAME_EXIST);
        }
        //到这说明一切符合条件，进行数据库新增
        if(clazzService.save(clazz) == null){
            return Result.error(CodeMsg.ADMIN_ClAZZ_ADD_ERROR);
        }
        operaterLogService.add("添加班级，班级名：" + clazz.getClaname());
        return Result.success(true);
    }
    /**
     * 班级编辑页面
     * @param model
     * @return
     */
    @RequestMapping(value="/edit")
    public String edit(Model model,@RequestParam(name="id",required=true)Long id){
        model.addAttribute("teachers",teacherService.findAll());
        model.addAttribute("clazz",clazzService.find(id));
        return "admin/clbum/edit";
    }

    /**
     * 编辑班级信息表单提交处理
     * @param clazz
     * @return
     */
    @RequestMapping(value="/edit",method=RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> edit(Clazz clazz){
        //用统一验证实体方法验证是否合法
        CodeMsg validate = ValidateEntityUtil.validate(clazz);
        if(validate.getCode() != CodeMsg.SUCCESS.getCode()){
            return Result.error(validate);
        }
        if(clazz.getTeacher() == null || clazz.getTeacher().getId() == null){
            return Result.error(CodeMsg.ADMIN_CLAZZ_TEACHER_EMPTY);
        }
        if(clazz.getId() == null || clazz.getId().longValue() <= 0){
            return Result.error(CodeMsg.ADMIN_CLAZZ_NOEXIST);
        }
        if(clazzService.isExistClaName(clazz.getClaname(), clazz.getId())){
            return Result.error(CodeMsg.ADMIN_CLAZZNAME_EXIST);
        }
        //到这说明一切符合条件，进行数据库保存
        Clazz clazzs = clazzService.find(clazz.getId());
        //讲提交的班级信息指定字段复制到已存在的clbzz对象中,该方法会覆盖新字段内容
        BeanUtils.copyProperties(clazz, clazzs, "id","createTime","updateTime");
        if(clazzService.save(clazzs) == null){
            return Result.error(CodeMsg.ADMIN_USE_EDIT_ERROR);
        }
        operaterLogService.add("编辑班级名，班级名：" + clazz.getClaname());
        return Result.success(true);
    }

    /**
     * 删除班级
     * @param id
     * @return
     */
    @RequestMapping(value="/delete",method=RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> delete(@RequestParam(name="id",required=true)Long id){
        try {
            clazzService.delete(id);
        } catch (Exception e) {
            return Result.error(CodeMsg.ADMIN_USE_DELETE_ERROR);
        }
        operaterLogService.add("删除班级，班级ID：" + id);
        return Result.success(true);
    }
}
