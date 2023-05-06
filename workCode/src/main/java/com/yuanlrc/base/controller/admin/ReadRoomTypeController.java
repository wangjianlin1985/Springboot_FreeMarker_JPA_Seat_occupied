package com.yuanlrc.base.controller.admin;

import com.yuanlrc.base.bean.CodeMsg;
import com.yuanlrc.base.bean.Result;
import com.yuanlrc.base.entity.admin.ReadingType;
import com.yuanlrc.base.service.admin.ReadRoomTypeService;
import com.yuanlrc.base.util.ValidateEntityUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/***
 * 阅读室类型管理控制层
 */
@Controller
@RequestMapping(value = "/readType")
public class ReadRoomTypeController {
    @Autowired
    private ReadRoomTypeService readRoomTypeService;


    /***
     * 阅览室类型全查询
     * @param model
     * @return
     */
    @RequestMapping(value = "/list")
    public String list(Model model){
        List<ReadingType> readingTypes = readRoomTypeService.findAll();
        model.addAttribute("title", "阅览室类型");
        model.addAttribute("readingTypes",readingTypes);
        return "/admin/readroomtype/list";
    }

    /***
     * 根据ID删除
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> delete(Long id){
        try {
            readRoomTypeService.deleteReadType(id);
        }catch (Exception e){
            return Result.error(CodeMsg.ADMIN_READ_DELETE);
        }
        return Result.success(true);
    }

    /***
     * 跳转到添加页面
     * @return
     */
    @RequestMapping(value = "/add")
    public  String tzSave(){
       return "/admin/readroomtype/add";
    }

    /***
     * 跳转到编辑页面
     * @return
     */
    @RequestMapping(value = "/edit")
    public  String update(@RequestParam(name="id",required=true)Long id, Model model){
        ReadingType byId = readRoomTypeService.findById(id);
        model.addAttribute("read",byId);
        return "/admin/readroomtype/edit";
    }

    /***
     * 新增阅览室类型
     * @return
     */
    @RequestMapping(value = "/save",method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean>  save(ReadingType readingType){
        //用统一验证实体方法验证是否合法
        CodeMsg validate = ValidateEntityUtil.validate(readingType);
        if(validate.getCode() != CodeMsg.SUCCESS.getCode()){
            return Result.error(validate);
        }
        //阅览室是否存在
       if(readRoomTypeService.isExistName(readingType.getName())){
          return  Result.error(CodeMsg.ADMIN_READ_ISEXIST);
       }
       //进行数据库操作
       readRoomTypeService.saveReadingType(readingType);
        return Result.success(true);
    }

    /***
     * 编辑阅览室
     * @return
     */
    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean>  edit(ReadingType readingType){
        //用统一验证实体方法验证是否合法
        CodeMsg validate = ValidateEntityUtil.validate(readingType);
        if(validate.getCode() != CodeMsg.SUCCESS.getCode()){
            return Result.error(validate);
        }
        //是否编辑自身
        if(readRoomTypeService.isExistName(readingType.getName(),readingType.getId())){
             return Result.error(CodeMsg.ADMIN_READ_ISEXIST);
        }
        //修改
        ReadingType byId = readRoomTypeService.findById(readingType.getId());
        BeanUtils.copyProperties(readingType,byId, "id","createTime","updateTime");
        readRoomTypeService.saveReadingType(byId);
        return Result.success(true);
    }
}
