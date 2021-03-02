package com.ruoyi.web.controller.system;

import java.util.List;
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
import com.ruoyi.system.domain.TbCf;
import com.ruoyi.system.service.ITbCfService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 违章违法Controller
 *
 * @author ruoyi
 * @date 2021-02-28
 */
@Controller
@RequestMapping("/system/cf")
public class TbCfController extends BaseController
{
    private String prefix = "system/cf";

    @Autowired
    private ITbCfService tbCfService;

    @RequiresPermissions("system:cf:view")
    @GetMapping()
    public String cf()
    {
        return prefix + "/cf";
    }

    /**
     * 查询违章违法列表
     */
    @RequiresPermissions("system:cf:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TbCf tbCf)
    {
        startPage();
        List<TbCf> list = tbCfService.selectTbCfList(tbCf);
        return getDataTable(list);
    }

    /**
     * 导出违章违法列表
     */
    @RequiresPermissions("system:cf:export")
    @Log(title = "违章违法", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TbCf tbCf)
    {
        List<TbCf> list = tbCfService.selectTbCfList(tbCf);
        ExcelUtil<TbCf> util = new ExcelUtil<TbCf>(TbCf.class);
        return util.exportExcel(list, "cf");
    }

    /**
     * 新增违章违法
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存违章违法
     */
    @RequiresPermissions("system:cf:add")
    @Log(title = "违章违法", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TbCf tbCf)
    {
        return toAjax(tbCfService.insertTbCf(tbCf));
    }

    /**
     * 修改违章违法
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TbCf tbCf = tbCfService.selectTbCfById(id);
        mmap.put("tbCf", tbCf);
        return prefix + "/edit";
    }

    /**
     * 修改保存违章违法
     */
    @RequiresPermissions("system:cf:edit")
    @Log(title = "违章违法", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TbCf tbCf)
    {
        return toAjax(tbCfService.updateTbCf(tbCf));
    }

    /**
     * 删除违章违法
     */
    @RequiresPermissions("system:cf:remove")
    @Log(title = "违章违法", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tbCfService.deleteTbCfByIds(ids));
    }
}
