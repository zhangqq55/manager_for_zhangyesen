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
import com.ruoyi.system.domain.TbDonateer;
import com.ruoyi.system.service.ITbDonateerService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 捐赠者Controller
 *
 * @author ruoyi
 * @date 2021-02-28
 */
@Controller
@RequestMapping("/system/donateer")
public class TbDonateerController extends BaseController
{
    private String prefix = "system/donateer";

    @Autowired
    private ISysUserService userService;
    @Autowired
    private SysPasswordService passwordService;
    @Autowired
    private ISysRoleService roleService;
    @Autowired
    private ITbDonateerService tbDonateerService;

    @RequiresPermissions("system:donateer:view")
    @GetMapping()
    public String donateer()
    {
        return prefix + "/donateer";
    }

    /**
     * 查询捐赠者列表
     */
    @RequiresPermissions("system:donateer:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TbDonateer tbDonateer)
    {
        startPage();
        List<TbDonateer> list = tbDonateerService.selectTbDonateerList(tbDonateer);
        return getDataTable(list);
    }

    /**
     * 导出捐赠者列表
     */
    @RequiresPermissions("system:donateer:export")
    @Log(title = "捐赠者", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TbDonateer tbDonateer)
    {
        List<TbDonateer> list = tbDonateerService.selectTbDonateerList(tbDonateer);
        ExcelUtil<TbDonateer> util = new ExcelUtil<TbDonateer>(TbDonateer.class);
        return util.exportExcel(list, "donateer");
    }

    /**
     * 新增捐赠者
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存捐赠者
     */
    @RequiresPermissions("system:donateer:add")
    @Log(title = "捐赠者", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TbDonateer tbDonateer)
    {
        SysUser sysUser= new SysUser();
        sysUser.setLoginName(tbDonateer.getDonateNumber());
        sysUser.setPassword(passwordService.encryptPassword(sysUser.getLoginName(), ShiroUtils.getSysUser().getPassword(), sysUser.getSalt()));

        sysUser.setUserName(tbDonateer.getDonateName());
        userService.insertUser(sysUser);
        for(SysUser sysUser1:userService.selectUserList(sysUser)){
            Long[] roleIds=new Long[1];
            roleIds[0]= Long.valueOf(3);
            userService.insertUserAuth(sysUser1.getUserId(),roleIds);
        }

        return toAjax(tbDonateerService.insertTbDonateer(tbDonateer));
    }

    /**
     * 修改捐赠者
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TbDonateer tbDonateer = tbDonateerService.selectTbDonateerById(id);
        mmap.put("tbDonateer", tbDonateer);
        return prefix + "/edit";
    }

    /**
     * 修改保存捐赠者
     */
    @RequiresPermissions("system:donateer:edit")
    @Log(title = "捐赠者", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TbDonateer tbDonateer)
    {
        return toAjax(tbDonateerService.updateTbDonateer(tbDonateer));
    }

    /**
     * 删除捐赠者
     */
    @RequiresPermissions("system:donateer:remove")
    @Log(title = "捐赠者", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tbDonateerService.deleteTbDonateerByIds(ids));
    }
}
