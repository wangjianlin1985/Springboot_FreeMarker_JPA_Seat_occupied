package com.yuanlrc.base.service.admin;

import com.yuanlrc.base.bean.PageBean;

import com.yuanlrc.base.dao.admin.TeacherDao;
import com.yuanlrc.base.entity.admin.Role;

import com.yuanlrc.base.entity.admin.Teacher;
import com.yuanlrc.base.entity.admin.User;
import com.yuanlrc.base.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;
import java.util.Optional;

@Service
public class TeacherService {

    @Autowired
    private TeacherDao teacherDao;

    @Autowired
    private UserService userService;


    @Autowired
    private RoleService roleService;


    public Teacher findByID(Long id) {


        Optional<Teacher> byId = teacherDao.findById(id);

        return byId.isPresent() ? byId.get() : null;
    }

    public List<Teacher> findAll() {
        return teacherDao.findAll();
    }

    /**
     * 删除一个教师删除的时候需要先查出来相对的用户的id
     * 先删除教师然后再删除相对应的用户
     *
     * @param id
     */
    public void delete(long id) {
        Teacher byID = findByID(id);
        teacherDao.deleteById(id);
        userService.delete(byID.getUser().getId());
    }

    /**
     * 保存教师
     * 用户需要固定一个教师的角色
     *
     * @param teacher
     * @return
     */
    @Transactional
    public Teacher add(Teacher teacher) {
        Role role = roleService.find(Teacher.TEACHER_ROLE_ENABLE);
        String s = StringUtil.generateSn(Teacher.TEACHER_BIRTHDAY_ENABLE);
        teacher.setTeacherSno(s);
        teacher.getUser().setPassword(s);
        teacher.getUser().setUsername(s);
        teacher.getUser().setRole(role);
        User user = teacher.getUser();
        User save = userService.save(user);
        teacher.setUser(save);
        return teacherDao.save(teacher);
    }

    /**
     * 保存一个教师
     *
     * @param teacher
     * @return
     */
    @Transactional
    public Teacher update(Teacher teacher) {
        User save = userService.save(teacher.getUser());
        teacher.setUser(save);
        return teacherDao.save(teacher);
    }

    /**
     * 分页按教师名称搜索教师列表
     *
     * @param teacher
     * @param pageBean
     * @return
     */
    public PageBean<Teacher> findByName(Teacher teacher, PageBean<Teacher> pageBean) {
        ExampleMatcher withMatcher = ExampleMatcher.matching().withMatcher("user.nickName", ExampleMatcher.GenericPropertyMatchers.contains());
        withMatcher = withMatcher.withIgnorePaths("teacherType", "clbum", "user.role", "user.status", "user.sex", "user.student", "user.teacher");
        Example<Teacher> example = Example.of(teacher, withMatcher);
        Pageable pageable = PageRequest.of(pageBean.getCurrentPage() - 1, pageBean.getPageSize());
        Page<Teacher> findAll = teacherDao.findAll(example, pageable);
        pageBean.setContent(findAll.getContent());
        pageBean.setTotal(findAll.getTotalElements());
        pageBean.setTotalPage(findAll.getTotalPages());
        return pageBean;
    }

}
