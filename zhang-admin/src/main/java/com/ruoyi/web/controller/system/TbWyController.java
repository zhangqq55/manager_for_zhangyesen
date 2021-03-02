package com.ruoyi.web.controller.system;

import java.util.List;

import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.ShiroUtils;
import com.ruoyi.framework.shiro.service.SysPasswordService;
import com.ruoyi.system.service.ISysRoleService;
import com.ruoyi.system.service.ISysUserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.TbWy;
import com.ruoyi.system.service.ITbWyService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 委员信息Controller
 *
 * @author ruoyi
 * @date 2021-02-28
 */
@Controller
@RequestMapping("/system/wy")
public class TbWyController extends BaseController
{
    private String prefix = "system/wy";
    @Autowired
    private ISysUserService userService;
    @Autowired
    private SysPasswordService passwordService;
    @Autowired
    private ISysRoleService roleService;
    @Autowired
    private ITbWyService tbWyService;

    @RequiresPermissions("system:wy:view")
    @GetMapping()
    public String wy()
    {
        return prefix + "/wy";
    }

    /**
     * 查询委员信息列表
     */
    @RequiresPermissions("system:wy:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TbWy tbWy)
    {
        startPage();
        List<TbWy> list = tbWyService.selectTbWyList(tbWy);
        return getDataTable(list);
    }

    /**
     * 导出委员信息列表
     */
    @RequiresPermissions("system:wy:export")
    @Log(title = "委员信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TbWy tbWy)
    {
        List<TbWy> list = tbWyService.selectTbWyList(tbWy);
        ExcelUtil<TbWy> util = new ExcelUtil<TbWy>(TbWy.class);
        return util.exportExcel(list, "wy");
    }

    /**
     * 新增委员信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存委员信息
     */
    @RequiresPermissions("system:wy:add")
    @Log(title = "委员信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TbWy tbWy)

    {
        SysUser sysUser= new SysUser();
        sysUser.setLoginName(tbWy.getWyNumber());
        sysUser.setPassword(passwordService.encryptPassword(sysUser.getLoginName(), ShiroUtils.getSysUser().getPassword(), sysUser.getSalt()));

        sysUser.setUserName(tbWy.getWyName());
        userService.insertUser(sysUser);
        for(SysUser sysUser1:userService.selectUserList(sysUser)){
            Long[] roleIds=new Long[1];
            roleIds[0]= Long.valueOf(3);
            userService.insertUserAuth(sysUser1.getUserId(),roleIds);
        }
        return toAjax(tbWyService.insertTbWy(tbWy));
    }

    /**
     * 修改委员信息
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TbWy tbWy = tbWyService.selectTbWyById(id);
        mmap.put("tbWy", tbWy);
        return prefix + "/edit";
    }

    /**
     * 修改保存委员信息
     */
    @RequiresPermissions("system:wy:edit")
    @Log(title = "委员信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TbWy tbWy)
    {
        return toAjax(tbWyService.updateTbWy(tbWy));
    }

    /**
     * 删除委员信息
     */
    @RequiresPermissions("system:wy:remove")
    @Log(title = "委员信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tbWyService.deleteTbWyByIds(ids));
    }
}
