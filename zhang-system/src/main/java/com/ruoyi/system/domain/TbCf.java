package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 违章违法对象 tb_cf
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
public class TbCf extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 通报人 */
    @Excel(name = "通报人")
    private String userId;

    /** 违章违法 */
    @Excel(name = "违章违法")
    private String cfContent;

    /** 通报处理时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "通报处理时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date cfTime;

    /** 负责人 */
    @Excel(name = "负责人")
    private String cfCraete;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setUserId(String userId) 
    {
        this.userId = userId;
    }

    public String getUserId() 
    {
        return userId;
    }
    public void setCfContent(String cfContent) 
    {
        this.cfContent = cfContent;
    }

    public String getCfContent() 
    {
        return cfContent;
    }
    public void setCfTime(Date cfTime) 
    {
        this.cfTime = cfTime;
    }

    public Date getCfTime() 
    {
        return cfTime;
    }
    public void setCfCraete(String cfCraete) 
    {
        this.cfCraete = cfCraete;
    }

    public String getCfCraete() 
    {
        return cfCraete;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("cfContent", getCfContent())
            .append("cfTime", getCfTime())
            .append("cfCraete", getCfCraete())
            .toString();
    }
}
