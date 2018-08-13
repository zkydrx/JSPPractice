package com.refectory.model;

import java.io.Serializable;
import java.util.Date;

public class RefectoryNewsRead implements Serializable
{
    private Long id;

    private Long userId;

    private String read;

    private Long refectoryId;

    private Date createTime;

    private Date updateTime;

    private static final long serialVersionUID = 1L;

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getUserId()
    {
        return userId;
    }

    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public String getRead()
    {
        return read;
    }

    public void setRead(String read)
    {
        this.read = read == null ? null : read.trim();
    }

    public Long getRefectoryId()
    {
        return refectoryId;
    }

    public void setRefectoryId(Long refectoryId)
    {
        this.refectoryId = refectoryId;
    }

    public Date getCreateTime()
    {
        return createTime;
    }

    public void setCreateTime(Date createTime)
    {
        this.createTime = createTime;
    }

    public Date getUpdateTime()
    {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime)
    {
        this.updateTime = updateTime;
    }

    @Override
    public String toString()
    {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", userId=").append(userId);
        sb.append(", read=").append(read);
        sb.append(", refectoryId=").append(refectoryId);
        sb.append(", createTime=").append(createTime);
        sb.append(", updateTime=").append(updateTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}