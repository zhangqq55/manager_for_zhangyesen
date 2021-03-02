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
import com.ruoyi.system.domain.TbLq;
import com.ruoyi.system.service.ITbLqService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 领取记录Controller
 *
 * @author ruoyi
 * @date 2021-02-28
 */
@Controller
@RequestMapping("/system/lq")
public class TbLqController extends BaseController
{
    private String prefix = "system/lq";
    @Autowired
    private ITbWzService tbWzService;
    @Autowired
    private ITbLqService tbLqService;

    @RequiresPermissions("system:lq:view")
    @GetMapping()
    public String lq()
    {
        return prefix + "/lq";
    }

    /**
     * 查询领取记录列表
     */
    @RequiresPermissions("system:lq:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TbLq tbLq)
    {
        startPage();
        List<TbLq> list = tbLqService.selectTbLqList(tbLq);
        return getDataTable(list);
    }

    /**
     * 导出领取记录列表
     */
    @RequiresPermissions("system:lq:export")
    @Log(title = "领取记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TbLq tbLq)
    {
        List<TbLq> list = tbLqService.selectTbLqList(tbLq);
        ExcelUtil<TbLq> util = new ExcelUtil<TbLq>(TbLq.class);
        return util.exportExcel(list, "lq");
    }

    /**
     * 新增领取记录
     */
    @GetMapping("/add")
    public String add(Model model)
    {
        model.addAttribute("wzs",tbWzService.selectTbWzList(new TbWz()));
        return prefix + "/add";
    }

    /**
     * 新增保存领取记录
     */
    @RequiresPermissions("system:lq:add")
    @Log(title = "领取记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TbLq tbLq)
    {
        TbWz tbWz =tbWzService.selectTbWzById(tbLq.getWzId());
        tbLq.setUserId(ShiroUtils.getUserId());
        tbLq.setUserName(ShiroUtils.getSysUser().getUserName());
        tbWz.setNum((long) (tbWz.getNum()+tbWz.getNum()));
        tbWzService.updateTbWz(tbWz);
        return toAjax(tbLqService.insertTbLq(tbLq));
    }

    /**
     * 修改领取记录
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TbLq tbLq = tbLqService.selectTbLqById(id);
        mmap.put("tbLq", tbLq);
        return prefix + "/edit";
    }

    /**
     * 修改保存领取记录
     */
    @RequiresPermissions("system:lq:edit")
    @Log(title = "领取记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TbLq tbLq)
    {
        return toAjax(tbLqService.updateTbLq(tbLq));
    }

    /**
     * 删除领取记录
     */
    @RequiresPermissions("system:lq:remove")
    @Log(title = "领取记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tbLqService.deleteTbLqByIds(ids));
    }
}
