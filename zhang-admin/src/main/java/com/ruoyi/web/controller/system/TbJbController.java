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
import com.ruoyi.system.domain.TbJb;
import com.ruoyi.system.service.ITbJbService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 举报记录Controller
 *
 * @author ruoyi
 * @date 2021-02-28
 */
@Controller
@RequestMapping("/system/jb")
public class TbJbController extends BaseController
{
    private String prefix = "system/jb";

    @Autowired
    private ITbJbService tbJbService;

    @RequiresPermissions("system:jb:view")
    @GetMapping()
    public String jb()
    {
        return prefix + "/jb";
    }

    /**
     * 查询举报记录列表
     */
    @RequiresPermissions("system:jb:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TbJb tbJb)
    {
        startPage();
        List<TbJb> list = tbJbService.selectTbJbList(tbJb);
        return getDataTable(list);
    }

    /**
     * 导出举报记录列表
     */
    @RequiresPermissions("system:jb:export")
    @Log(title = "举报记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TbJb tbJb)
    {
        List<TbJb> list = tbJbService.selectTbJbList(tbJb);
        ExcelUtil<TbJb> util = new ExcelUtil<TbJb>(TbJb.class);
        return util.exportExcel(list, "jb");
    }

    /**
     * 新增举报记录
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存举报记录
     */
    @RequiresPermissions("system:jb:add")
    @Log(title = "举报记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TbJb tbJb)
    {
        return toAjax(tbJbService.insertTbJb(tbJb));
    }

    /**
     * 修改举报记录
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TbJb tbJb = tbJbService.selectTbJbById(id);
        mmap.put("tbJb", tbJb);
        return prefix + "/edit";
    }

    /**
     * 修改保存举报记录
     */
    @RequiresPermissions("system:jb:edit")
    @Log(title = "举报记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TbJb tbJb)
    {
        return toAjax(tbJbService.updateTbJb(tbJb));
    }

    /**
     * 删除举报记录
     */
    @RequiresPermissions("system:jb:remove")
    @Log(title = "举报记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tbJbService.deleteTbJbByIds(ids));
    }
}
