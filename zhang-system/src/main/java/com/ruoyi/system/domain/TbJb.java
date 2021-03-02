package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 举报记录对象 tb_jb
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
public class TbJb extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 举报编号 */
    private Long id;

    /** 举报内容 */
    @Excel(name = "举报内容")
    private String content;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("content", getContent())
            .append("createTime", getCreateTime())
            .toString();
    }
}
