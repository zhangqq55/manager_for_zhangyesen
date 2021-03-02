package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 领取记录对象 tb_lq
 *
 * @author ruoyi
 * @date 2021-02-28
 */
public class TbLq extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 领取人编号 */
    @Excel(name = "领取人编号")
    private Long userId;

    /** 领取人 */
    @Excel(name = "领取人")
    private String userName;

    /** 物资 */
    @Excel(name = "物资")
    private Long wzId;

    /** 领取数量 */
    @Excel(name = "领取数量")
    private Long lqNum;
    private  String wzName;

    public String getWzName() {
        return wzName;
    }

    public void setWzName(String wzName) {
        this.wzName = wzName;
    }

    /** 领取时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "领取时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date lqTime;

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
    public void setLqNum(Long lqNum)
    {
        this.lqNum = lqNum;
    }

    public Long getLqNum()
    {
        return lqNum;
    }
    public void setLqTime(Date lqTime)
    {
        this.lqTime = lqTime;
    }

    public Date getLqTime()
    {
        return lqTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("userName", getUserName())
            .append("wzId", getWzId())
            .append("lqNum", getLqNum())
            .append("lqTime", getLqTime())
            .toString();
    }
}
