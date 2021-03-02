package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 捐赠记录对象 tb_jz
 *
 * @author ruoyi
 * @date 2021-02-28
 */
public class TbJz extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 捐赠者编号 */
    @Excel(name = "捐赠者编号")
    private Long userId;

    /** 捐赠者 */
    @Excel(name = "捐赠者")
    private String userName;

    /**  */
    @Excel(name = "")
    private Long wzId;

    /** 捐赠数量 */
    @Excel(name = "捐赠数量")
    private Long jzNum;
    private  String wzName;

    public String getWzName() {
        return wzName;
    }

    public void setWzName(String wzName) {
        this.wzName = wzName;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setUserName(String userName)
    {
        this.userName = userName;
    }

    public String getUserName()
    {
        return userName;
    }
    public void setWzId(Long wzId)
    {
        this.wzId = wzId;
    }

    public Long getWzId()
    {
        return wzId;
    }
    public void setJzNum(Long jzNum)
    {
        this.jzNum = jzNum;
    }

    public Long getJzNum()
    {
        return jzNum;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("userName", getUserName())
            .append("wzId", getWzId())
            .append("jzNum", getJzNum())
            .append("createTime", getCreateTime())
            .toString();
    }
}
