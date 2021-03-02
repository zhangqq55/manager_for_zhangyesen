package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 物资信息对象 tb_wz
 *
 * @author ruoyi
 * @date 2021-02-28
 */
public class TbWz extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 物资 */
    @Excel(name = "物资")
    private String wzName;

    /** 物资类型 */
    @Excel(name = "物资类型")
    private String typeName;

    /** 库存数量 */
    @Excel(name = "库存数量")
    private Long num;

    public Long getNum() {
        return num;
    }

    public void setNum(Long num) {
        this.num = num;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setWzName(String wzName)
    {
        this.wzName = wzName;
    }

    public String getWzName()
    {
        return wzName;
    }
    public void setTypeName(String typeName)
    {
        this.typeName = typeName;
    }

    public String getTypeName()
    {
        return typeName;
    }


    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("wzName", getWzName())
            .append("typeName", getTypeName())
            .append("num", getNum())
            .toString();
    }
}
