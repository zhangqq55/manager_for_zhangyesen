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
import com.ruoyi.system.domain.TbZc;
import com.ruoyi.system.service.ITbZcService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 章程Controller
 *
 * @author ruoyi
 * @date 2021-02-28
 */
@Controller
@RequestMapping("/system/zc")
public class TbZcController extends BaseController
{
    private String prefix = "system/zc";

    @Autowired
    private ITbZcService tbZcService;

    @RequiresPermissions("system:zc:view")
    @GetMapping()
    public String zc()
    {
        return prefix + "/zc";
    }

    /**
     * 查询章程列表
     */
    @RequiresPermissions("system:zc:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TbZc tbZc)
    {
        startPage();
        List<TbZc> list = tbZcService.selectTbZcList(tbZc);
        return getDataTable(list);
    }

    /**
     * 导出章程列表
     */
    @RequiresPermissions("system:zc:export")
    @Log(title = "章程", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TbZc tbZc)
    {
        List<TbZc> list = tbZcService.selectTbZcList(tbZc);
        ExcelUtil<TbZc> util = new ExcelUtil<TbZc>(TbZc.class);
        return util.exportExcel(list, "zc");
    }

    /**
     * 新增章程
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存章程
     */
    @RequiresPermissions("system:zc:add")
    @Log(title = "章程", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TbZc tbZc)
    {
        return toAjax(tbZcService.insertTbZc(tbZc));
    }

    /**
     * 修改章程
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TbZc tbZc = tbZcService.selectTbZcById(id);
        mmap.put("tbZc", tbZc);
        return prefix + "/edit";
    }

    /**
     * 修改保存章程
     */
    @RequiresPermissions("system:zc:edit")
    @Log(title = "章程", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TbZc tbZc)
    {
        return toAjax(tbZcService.updateTbZc(tbZc));
    }

    /**
     * 删除章程
     */
    @RequiresPermissions("system:zc:remove")
    @Log(title = "章程", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tbZcService.deleteTbZcByIds(ids));
    }
}
