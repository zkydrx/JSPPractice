package com.refectory.dao;

import com.refectory.model.RefectoryNewsRead;

public interface RefectoryNewsReadMapper
{
    int deleteByPrimaryKey(Long id);

    int insert(RefectoryNewsRead record);

    int insertSelective(RefectoryNewsRead record);

    RefectoryNewsRead selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RefectoryNewsRead record);

    int updateByPrimaryKey(RefectoryNewsRead record);
}