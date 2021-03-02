package com.ruoyi.web.controller.system;

import java.util.List;

import com.ruoyi.system.domain.TbWztype;
import com.ruoyi.system.service.ITbWztypeService;
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
import com.ruoyi.system.domain.TbWz;
import com.ruoyi.system.service.ITbWzService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;


/**
 * 物资信息Controller
 *
 * @author ruoyi
 * @date 2021-02-28
 */
@Controller
@RequestMapping("/system/wz")
public class TbWzController extends BaseController
{
    private String prefix = "system/wz";

    @Autowired
    private ITbWzService tbWzService;
    @Autowired
    private ITbWztypeService tbWztypeService;
    @RequiresPermissions("system:wz:view")
    @GetMapping()
    public String wz()
    {
        return prefix + "/wz";
    }

    /**
     * 查询物资信息列表
     */
    @RequiresPermissions("system:wz:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TbWz tbWz)
    {
        startPage();
        List<TbWz> list = tbWzService.selectTbWzList(tbWz);
        return getDataTable(list);
    }

    /**
     * 导出物资信息列表
     */
    @RequiresPermissions("system:wz:export")
    @Log(title = "物资信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TbWz tbWz)
    {
        List<TbWz> list = tbWzService.selectTbWzList(tbWz);
        ExcelUtil<TbWz> util = new ExcelUtil<TbWz>(TbWz.class);
        return util.exportExcel(list, "wz");
    }

    /**
     * 新增物资信息
     */
    @GetMapping("/add")
    public String add(Model model)
    {
        model.addAttribute("wztypes",tbWztypeService.selectTbWztypeList(new TbWztype()));
        return prefix + "/add";
    }

    /**
     * 新增保存物资信息
     */
    @RequiresPermissions("system:wz:add")
    @Log(title = "物资信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TbWz tbWz)
    {
        return toAjax(tbWzService.insertTbWz(tbWz));
    }

    /**
     * 修改物资信息
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TbWz tbWz = tbWzService.selectTbWzById(id);
        mmap.put("tbWz", tbWz);
        return prefix + "/edit";
    }

    /**
     * 修改保存物资信息
     */
    @RequiresPermissions("system:wz:edit")
    @Log(title = "物资信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TbWz tbWz)
    {
        return toAjax(tbWzService.updateTbWz(tbWz));
    }

    /**
     * 删除物资信息
     */
    @RequiresPermissions("system:wz:remove")
    @Log(title = "物资信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tbWzService.deleteTbWzByIds(ids));
    }
}
