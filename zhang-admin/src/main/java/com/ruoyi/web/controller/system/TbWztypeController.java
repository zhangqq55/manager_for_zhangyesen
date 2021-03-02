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
import com.ruoyi.system.domain.TbWztype;
import com.ruoyi.system.service.ITbWztypeService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 物资类型Controller
 *
 * @author ruoyi
 * @date 2021-02-28
 */
@Controller
@RequestMapping("/system/wztype")
public class TbWztypeController extends BaseController
{
    private String prefix = "system/wztype";

    @Autowired
    private ITbWztypeService tbWztypeService;

    @RequiresPermissions("system:wztype:view")
    @GetMapping()
    public String wztype()
    {
        return prefix + "/wztype";
    }

    /**
     * 查询物资类型列表
     */
    @RequiresPermissions("system:wztype:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TbWztype tbWztype)
    {
        startPage();
        List<TbWztype> list = tbWztypeService.selectTbWztypeList(tbWztype);
        return getDataTable(list);
    }

    /**
     * 导出物资类型列表
     */
    @RequiresPermissions("system:wztype:export")
    @Log(title = "物资类型", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TbWztype tbWztype)
    {
        List<TbWztype> list = tbWztypeService.selectTbWztypeList(tbWztype);
        ExcelUtil<TbWztype> util = new ExcelUtil<TbWztype>(TbWztype.class);
        return util.exportExcel(list, "wztype");
    }

    /**
     * 新增物资类型
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存物资类型
     */
    @RequiresPermissions("system:wztype:add")
    @Log(title = "物资类型", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TbWztype tbWztype)
    {
        return toAjax(tbWztypeService.insertTbWztype(tbWztype));
    }

    /**
     * 修改物资类型
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TbWztype tbWztype = tbWztypeService.selectTbWztypeById(id);
        mmap.put("tbWztype", tbWztype);
        return prefix + "/edit";
    }

    /**
     * 修改保存物资类型
     */
    @RequiresPermissions("system:wztype:edit")
    @Log(title = "物资类型", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TbWztype tbWztype)
    {
        return toAjax(tbWztypeService.updateTbWztype(tbWztype));
    }

    /**
     * 删除物资类型
     */
    @RequiresPermissions("system:wztype:remove")
    @Log(title = "物资类型", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tbWztypeService.deleteTbWztypeByIds(ids));
    }
}
