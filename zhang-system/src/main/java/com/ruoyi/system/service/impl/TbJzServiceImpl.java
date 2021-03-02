package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbJzMapper;
import com.ruoyi.system.domain.TbJz;
import com.ruoyi.system.service.ITbJzService;
import com.ruoyi.common.core.text.Convert;

/**
 * 捐赠记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
@Service
public class TbJzServiceImpl implements ITbJzService 
{
    @Autowired
    private TbJzMapper tbJzMapper;

    /**
     * 查询捐赠记录
     * 
     * @param id 捐赠记录ID
     * @return 捐赠记录
     */
    @Override
    public TbJz selectTbJzById(Long id)
    {
        return tbJzMapper.selectTbJzById(id);
    }

    /**
     * 查询捐赠记录列表
     * 
     * @param tbJz 捐赠记录
     * @return 捐赠记录
     */
    @Override
    public List<TbJz> selectTbJzList(TbJz tbJz)
    {
        return tbJzMapper.selectTbJzList(tbJz);
    }

    /**
     * 新增捐赠记录
     * 
     * @param tbJz 捐赠记录
     * @return 结果
     */
    @Override
    public int insertTbJz(TbJz tbJz)
    {
        tbJz.setCreateTime(DateUtils.getNowDate());
        return tbJzMapper.insertTbJz(tbJz);
    }

    /**
     * 修改捐赠记录
     * 
     * @param tbJz 捐赠记录
     * @return 结果
     */
    @Override
    public int updateTbJz(TbJz tbJz)
    {
        return tbJzMapper.updateTbJz(tbJz);
    }

    /**
     * 删除捐赠记录对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTbJzByIds(String ids)
    {
        return tbJzMapper.deleteTbJzByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除捐赠记录信息
     * 
     * @param id 捐赠记录ID
     * @return 结果
     */
    @Override
    public int deleteTbJzById(Long id)
    {
        return tbJzMapper.deleteTbJzById(id);
    }
}
