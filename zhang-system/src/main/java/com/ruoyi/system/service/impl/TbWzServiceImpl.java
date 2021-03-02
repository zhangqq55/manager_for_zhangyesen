package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbWzMapper;
import com.ruoyi.system.domain.TbWz;
import com.ruoyi.system.service.ITbWzService;
import com.ruoyi.common.core.text.Convert;

/**
 * 物资信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
@Service
public class TbWzServiceImpl implements ITbWzService 
{
    @Autowired
    private TbWzMapper tbWzMapper;

    /**
     * 查询物资信息
     * 
     * @param id 物资信息ID
     * @return 物资信息
     */
    @Override
    public TbWz selectTbWzById(Long id)
    {
        return tbWzMapper.selectTbWzById(id);
    }

    /**
     * 查询物资信息列表
     * 
     * @param tbWz 物资信息
     * @return 物资信息
     */
    @Override
    public List<TbWz> selectTbWzList(TbWz tbWz)
    {
        return tbWzMapper.selectTbWzList(tbWz);
    }

    /**
     * 新增物资信息
     * 
     * @param tbWz 物资信息
     * @return 结果
     */
    @Override
    public int insertTbWz(TbWz tbWz)
    {
        return tbWzMapper.insertTbWz(tbWz);
    }

    /**
     * 修改物资信息
     * 
     * @param tbWz 物资信息
     * @return 结果
     */
    @Override
    public int updateTbWz(TbWz tbWz)
    {
        return tbWzMapper.updateTbWz(tbWz);
    }

    /**
     * 删除物资信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTbWzByIds(String ids)
    {
        return tbWzMapper.deleteTbWzByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除物资信息信息
     * 
     * @param id 物资信息ID
     * @return 结果
     */
    @Override
    public int deleteTbWzById(Long id)
    {
        return tbWzMapper.deleteTbWzById(id);
    }
}
