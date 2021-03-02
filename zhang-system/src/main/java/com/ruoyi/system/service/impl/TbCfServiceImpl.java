package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbCfMapper;
import com.ruoyi.system.domain.TbCf;
import com.ruoyi.system.service.ITbCfService;
import com.ruoyi.common.core.text.Convert;

/**
 * 违章违法Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
@Service
public class TbCfServiceImpl implements ITbCfService 
{
    @Autowired
    private TbCfMapper tbCfMapper;

    /**
     * 查询违章违法
     * 
     * @param id 违章违法ID
     * @return 违章违法
     */
    @Override
    public TbCf selectTbCfById(Long id)
    {
        return tbCfMapper.selectTbCfById(id);
    }

    /**
     * 查询违章违法列表
     * 
     * @param tbCf 违章违法
     * @return 违章违法
     */
    @Override
    public List<TbCf> selectTbCfList(TbCf tbCf)
    {
        return tbCfMapper.selectTbCfList(tbCf);
    }

    /**
     * 新增违章违法
     * 
     * @param tbCf 违章违法
     * @return 结果
     */
    @Override
    public int insertTbCf(TbCf tbCf)
    {
        return tbCfMapper.insertTbCf(tbCf);
    }

    /**
     * 修改违章违法
     * 
     * @param tbCf 违章违法
     * @return 结果
     */
    @Override
    public int updateTbCf(TbCf tbCf)
    {
        return tbCfMapper.updateTbCf(tbCf);
    }

    /**
     * 删除违章违法对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTbCfByIds(String ids)
    {
        return tbCfMapper.deleteTbCfByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除违章违法信息
     * 
     * @param id 违章违法ID
     * @return 结果
     */
    @Override
    public int deleteTbCfById(Long id)
    {
        return tbCfMapper.deleteTbCfById(id);
    }
}
