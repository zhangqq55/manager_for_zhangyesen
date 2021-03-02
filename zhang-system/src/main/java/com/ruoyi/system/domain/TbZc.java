package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 章程对象 tb_zc
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
public class TbZc extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 标题 */
    @Excel(name = "标题")
    private String wyhType;

    /** 委员会章程 */
    @Excel(name = "委员会章程")
    private String wyhContent;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setWyhType(String wyhType) 
    {
        this.wyhType = wyhType;
    }

    public String getWyhType() 
    {
        return wyhType;
    }
    public void setWyhContent(String wyhContent) 
    {
        this.wyhContent = wyhContent;
    }

    public String getWyhContent() 
    {
        return wyhContent;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("wyhType", getWyhType())
            .append("wyhContent", getWyhContent())
            .toString();
    }
}
