package com.yuanlrc.base.controller.admin;

import com.yuanlrc.base.bean.CodeMsg;
import com.yuanlrc.base.bean.PageBean;
import com.yuanlrc.base.bean.Result;
import com.yuanlrc.base.entity.admin.ReadingRoom;
import com.yuanlrc.base.entity.admin.ReadingType;
import com.yuanlrc.base.service.admin.ReadRoomService;
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

import java.util.Date;
import java.util.List;

/***
 * 阅读室管理操作控制层
 */
@Controller
@RequestMapping(value = "/readRoom")
public class ReadRoomController {

    @Autowired
    private ReadRoomService readRoomService;

    @Autowired
    private ReadRoomTypeService readRoomTypeService;
    @RequestMapping(value="/list")
    public String list(Model model, ReadingRoom readingRoom, PageBean<ReadingRoom> pageBean){
        model.addAttribute("title", "阅览室列表");
        model.addAttribute("name",readingRoom.getName());
        model.addAttribute("pageBean", readRoomService.findAll(readingRoom, pageBean));
        return "admin/readroom/list";
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
            readRoomService.deleteId(id);
        }catch (Exception e){
            return Result.error(CodeMsg.ADMIN_READING_DELETE);
        }
        return Result.success(true);
    }

    /***
     * 跳转到添加页面
     * @return
     */
    @RequestMapping(value = "/add")
    public  String tzSave(Model model)
    {
        List<ReadingType> all = readRoomTypeService.findAll();
        model.addAttribute("readType",all);
        return "/admin/readroom/add";
    }

    /***
     * 新增阅览室类型
     * @return
     */
    @RequestMapping(value = "/save",method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean>  save(ReadingRoom readingRoom){
        //用统一验证实体方法验证是否合法
        CodeMsg validate = ValidateEntityUtil.validate(readingRoom);
        if(validate.getCode() != CodeMsg.SUCCESS.getCode()){
            return Result.error(validate);
        }
        //阅览室是否存在
        if(readRoomService.isExistName(readingRoom.getName(),readingRoom.getReadingType().getId())){
            return  Result.error(CodeMsg.ADMIN_READING_ISEXIST);
        }
        //进行数据库操作
        readRoomService.save(readingRoom);
        return Result.success(true);
    }

    /***
     * 跳转到编辑页面
     * @return
     */
    @RequestMapping(value = "/edit")
    public  String update(@RequestParam(name="id",required=true)Long id, Model model){
        ReadingRoom byId = readRoomService.findById(id);
        model.addAttribute("read",byId);
        model.addAttribute("readType",readRoomTypeService.findAll());
        return "/admin/readroom/edit";
    }

    /***
     * 编辑阅览室
     * @return
     */
    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean>  edit(ReadingRoom readingRoom){
        readingRoom.setCreateTime(new Date());
        //用统一验证实体方法验证是否合法
        CodeMsg validate = ValidateEntityUtil.validate(readingRoom);
        if(validate.getCode() != CodeMsg.SUCCESS.getCode()){
            return Result.error(validate);
        }

        //是否编辑自身
        if(readRoomService.isExistName(readingRoom.getId(),readingRoom.getName(),readingRoom.getReadingType().getId())){
            return Result.error(CodeMsg.ADMIN_READING_ISEXIST);
        }

        //进行数据库操作
        ReadingRoom byId = readRoomService.findById(readingRoom.getId());
        BeanUtils.copyProperties(readingRoom,byId, "id","createTime","updateTime");
        readRoomService.save(byId);
        return Result.success(true);
    }

}
