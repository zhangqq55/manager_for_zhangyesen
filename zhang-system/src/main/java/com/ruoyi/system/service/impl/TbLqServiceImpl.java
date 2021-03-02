package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbLqMapper;
import com.ruoyi.system.domain.TbLq;
import com.ruoyi.system.service.ITbLqService;
import com.ruoyi.common.core.text.Convert;

/**
 * 领取记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
@Service
public class TbLqServiceImpl implements ITbLqService 
{
    @Autowired
    private TbLqMapper tbLqMapper;

    /**
     * 查询领取记录
     * 
     * @param id 领取记录ID
     * @return 领取记录
     */
    @Override
    public TbLq selectTbLqById(Long id)
    {
        return tbLqMapper.selectTbLqById(id);
    }

    /**
     * 查询领取记录列表
     * 
     * @param tbLq 领取记录
     * @return 领取记录
     */
    @Override
    public List<TbLq> selectTbLqList(TbLq tbLq)
    {
        return tbLqMapper.selectTbLqList(tbLq);
    }

    /**
     * 新增领取记录
     * 
     * @param tbLq 领取记录
     * @return 结果
     */
    @Override
    public int insertTbLq(TbLq tbLq)
    {
        return tbLqMapper.insertTbLq(tbLq);
    }

    /**
     * 修改领取记录
     * 
     * @param tbLq 领取记录
     * @return 结果
     */
    @Override
    public int updateTbLq(TbLq tbLq)
    {
        return tbLqMapper.updateTbLq(tbLq);
    }

    /**
     * 删除领取记录对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTbLqByIds(String ids)
    {
        return tbLqMapper.deleteTbLqByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除领取记录信息
     * 
     * @param id 领取记录ID
     * @return 结果
     */
    @Override
    public int deleteTbLqById(Long id)
    {
        return tbLqMapper.deleteTbLqById(id);
    }
}
