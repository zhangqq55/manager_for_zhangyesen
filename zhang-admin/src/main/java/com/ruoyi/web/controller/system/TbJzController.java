package com.ruoyi.web.controller.system;

import java.util.List;

import com.ruoyi.common.utils.ShiroUtils;
import com.ruoyi.system.domain.TbWz;
import com.ruoyi.system.service.ITbWzService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.TbJz;
import com.ruoyi.system.service.ITbJzService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 捐赠记录Controller
 *
 * @author ruoyi
 * @date 2021-02-28
 */
@Controller
@RequestMapping("/system/jz")
public class TbJzController extends BaseController
{
    private String prefix = "system/jz";
    @Autowired
    private ITbWzService tbWzService;
    @Autowired
    private ITbJzService tbJzService;

    @RequiresPermissions("system:jz:view")
    @GetMapping()
    public String jz()
    {
        return prefix + "/jz";
    }

    /**
     * 查询捐赠记录列表
     */
    @RequiresPermissions("system:jz:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TbJz tbJz)
    {
        startPage();
        List<TbJz> list = tbJzService.selectTbJzList(tbJz);
        return getDataTable(list);
    }

    /**
     * 导出捐赠记录列表
     */
    @RequiresPermissions("system:jz:export")
    @Log(title = "捐赠记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TbJz tbJz)
    {
        List<TbJz> list = tbJzService.selectTbJzList(tbJz);
        ExcelUtil<TbJz> util = new ExcelUtil<TbJz>(TbJz.class);
        return util.exportExcel(list, "jz");
    }

    /**
     * 新增捐赠记录
     */
    @GetMapping("/add")
    public String add(Model model)
    {


        model.addAttribute("wzs",tbWzService.selectTbWzList(new TbWz()));
        return prefix + "/add";
    }

    /**
     * 新增保存捐赠记录
     */
    @RequiresPermissions("system:jz:add")
    @Log(title = "捐赠记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TbJz tbJz)
    {
        TbWz tbWz =tbWzService.selectTbWzById(tbJz.getWzId());
        tbJz.setUserName(ShiroUtils.getSysUser().getUserName());
        tbJz.setUserId(ShiroUtils.getUserId());
        tbWz.setNum((long) (tbWz.getNum()+tbJz.getJzNum()));
        tbWzService.updateTbWz(tbWz);
        return toAjax(tbJzService.insertTbJz(tbJz));
    }

    /**
     * 修改捐赠记录
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TbJz tbJz = tbJzService.selectTbJzById(id);
        mmap.put("tbJz", tbJz);
        return prefix + "/edit";
    }

    /**
     * 修改保存捐赠记录
     */
    @RequiresPermissions("system:jz:edit")
    @Log(title = "捐赠记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TbJz tbJz)
    {
        return toAjax(tbJzService.updateTbJz(tbJz));
    }

    /**
     * 删除捐赠记录
     */
    @RequiresPermissions("system:jz:remove")
    @Log(title = "捐赠记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tbJzService.deleteTbJzByIds(ids));
    }
}
