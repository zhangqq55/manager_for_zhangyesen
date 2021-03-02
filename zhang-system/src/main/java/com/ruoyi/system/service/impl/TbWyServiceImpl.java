package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbWyMapper;
import com.ruoyi.system.domain.TbWy;
import com.ruoyi.system.service.ITbWyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 委员信息Service业务层处理
 *
 * @author ruoyi
 * @date 2021-02-28
 */
@Service
public class TbWyServiceImpl implements ITbWyService
{
    @Autowired
    private TbWyMapper tbWyMapper;

    /**
     * 查询委员信息
     *
     * @param id 委员信息ID
     * @return 委员信息
     */
    @Override
    public TbWy selectTbWyById(Long id)
    {
        return tbWyMapper.selectTbWyById(id);
    }

    /**
     * 查询委员信息列表
     *
     * @param tbWy 委员信息
     * @return 委员信息
     */
    @Override
    public List<TbWy> selectTbWyList(TbWy tbWy)
    {
        return tbWyMapper.selectTbWyList(tbWy);
    }

    /**
     * 新增委员信息
     *
     * @param tbWy 委员信息
     * @return 结果
     */
    @Override
    public int insertTbWy(TbWy tbWy)
    {
        return tbWyMapper.insertTbWy(tbWy);
    }

    /**
     * 修改委员信息
     *
     * @param tbWy 委员信息
     * @return 结果
     */
    @Override
    public int updateTbWy(TbWy tbWy)
    {
        return tbWyMapper.updateTbWy(tbWy);
    }

    /**
     * 删除委员信息对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTbWyByIds(String ids)
    {
        return tbWyMapper.deleteTbWyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除委员信息信息
     *
     * @param id 委员信息ID
     * @return 结果
     */
    @Override
    public int deleteTbWyById(Long id)
    {
        return tbWyMapper.deleteTbWyById(id);
    }
}
