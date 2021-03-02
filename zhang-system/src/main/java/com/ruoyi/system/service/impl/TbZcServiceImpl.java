package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbZcMapper;
import com.ruoyi.system.domain.TbZc;
import com.ruoyi.system.service.ITbZcService;
import com.ruoyi.common.core.text.Convert;

/**
 * 章程Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
@Service
public class TbZcServiceImpl implements ITbZcService 
{
    @Autowired
    private TbZcMapper tbZcMapper;

    /**
     * 查询章程
     * 
     * @param id 章程ID
     * @return 章程
     */
    @Override
    public TbZc selectTbZcById(Long id)
    {
        return tbZcMapper.selectTbZcById(id);
    }

    /**
     * 查询章程列表
     * 
     * @param tbZc 章程
     * @return 章程
     */
    @Override
    public List<TbZc> selectTbZcList(TbZc tbZc)
    {
        return tbZcMapper.selectTbZcList(tbZc);
    }

    /**
     * 新增章程
     * 
     * @param tbZc 章程
     * @return 结果
     */
    @Override
    public int insertTbZc(TbZc tbZc)
    {
        return tbZcMapper.insertTbZc(tbZc);
    }

    /**
     * 修改章程
     * 
     * @param tbZc 章程
     * @return 结果
     */
    @Override
    public int updateTbZc(TbZc tbZc)
    {
        return tbZcMapper.updateTbZc(tbZc);
    }

    /**
     * 删除章程对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTbZcByIds(String ids)
    {
        return tbZcMapper.deleteTbZcByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除章程信息
     * 
     * @param id 章程ID
     * @return 结果
     */
    @Override
    public int deleteTbZcById(Long id)
    {
        return tbZcMapper.deleteTbZcById(id);
    }
}
