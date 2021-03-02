package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 捐赠者对象 tb_donateer
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
public class TbDonateer extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 捐赠者编号 */
    @Excel(name = "捐赠者编号")
    private String donateNumber;

    /** 捐赠者姓名 */
    @Excel(name = "捐赠者姓名")
    private String donateName;

    /** 性别 */
    @Excel(name = "性别")
    private Long sex;

    /** 出生日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "出生日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date csDate;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setDonateNumber(String donateNumber) 
    {
        this.donateNumber = donateNumber;
    }

    public String getDonateNumber() 
    {
        return donateNumber;
    }
    public void setDonateName(String donateName) 
    {
        this.donateName = donateName;
    }

    public String getDonateName() 
    {
        return donateName;
    }
    public void setSex(Long sex) 
    {
        this.sex = sex;
    }

    public Long getSex() 
    {
        return sex;
    }
    public void setCsDate(Date csDate) 
    {
        this.csDate = csDate;
    }

    public Date getCsDate() 
    {
        return csDate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("donateNumber", getDonateNumber())
            .append("donateName", getDonateName())
            .append("sex", getSex())
            .append("csDate", getCsDate())
            .toString();
    }
}
