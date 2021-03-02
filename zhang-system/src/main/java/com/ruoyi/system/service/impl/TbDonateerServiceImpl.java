package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbDonateerMapper;
import com.ruoyi.system.domain.TbDonateer;
import com.ruoyi.system.service.ITbDonateerService;
import com.ruoyi.common.core.text.Convert;

/**
 * 捐赠者Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
@Service
public class TbDonateerServiceImpl implements ITbDonateerService 
{
    @Autowired
    private TbDonateerMapper tbDonateerMapper;

    /**
     * 查询捐赠者
     * 
     * @param id 捐赠者ID
     * @return 捐赠者
     */
    @Override
    public TbDonateer selectTbDonateerById(Long id)
    {
        return tbDonateerMapper.selectTbDonateerById(id);
    }

    /**
     * 查询捐赠者列表
     * 
     * @param tbDonateer 捐赠者
     * @return 捐赠者
     */
    @Override
    public List<TbDonateer> selectTbDonateerList(TbDonateer tbDonateer)
    {
        return tbDonateerMapper.selectTbDonateerList(tbDonateer);
    }

    /**
     * 新增捐赠者
     * 
     * @param tbDonateer 捐赠者
     * @return 结果
     */
    @Override
    public int insertTbDonateer(TbDonateer tbDonateer)
    {
        return tbDonateerMapper.insertTbDonateer(tbDonateer);
    }

    /**
     * 修改捐赠者
     * 
     * @param tbDonateer 捐赠者
     * @return 结果
     */
    @Override
    public int updateTbDonateer(TbDonateer tbDonateer)
    {
        return tbDonateerMapper.updateTbDonateer(tbDonateer);
    }

    /**
     * 删除捐赠者对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTbDonateerByIds(String ids)
    {
        return tbDonateerMapper.deleteTbDonateerByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除捐赠者信息
     * 
     * @param id 捐赠者ID
     * @return 结果
     */
    @Override
    public int deleteTbDonateerById(Long id)
    {
        return tbDonateerMapper.deleteTbDonateerById(id);
    }
}
