package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 委员信息对象 tb_wy
 *
 * @author ruoyi
 * @date 2021-02-28
 */
public class TbWy extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 委员编号 */
    @Excel(name = "委员编号")
    private String wyNumber;

    /** 委员姓名 */
    @Excel(name = "委员姓名")
    private String wyName;

    /** 委员联系方式 */
    @Excel(name = "委员联系方式")
    private String wyPhone;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setWyNumber(String wyNumber)
    {
        this.wyNumber = wyNumber;
    }

    public String getWyNumber()
    {
        return wyNumber;
    }
    public void setWyName(String wyName)
    {
        this.wyName = wyName;
    }

    public String getWyName()
    {
        return wyName;
    }
    public void setWyPhone(String wyPhone)
    {
        this.wyPhone = wyPhone;
    }

    public String getWyPhone()
    {
        return wyPhone;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("wyNumber", getWyNumber())
            .append("wyName", getWyName())
            .append("wyPhone", getWyPhone())
            .toString();
    }
}
