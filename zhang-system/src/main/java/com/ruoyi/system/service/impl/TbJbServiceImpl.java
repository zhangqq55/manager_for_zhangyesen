package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbJbMapper;
import com.ruoyi.system.domain.TbJb;
import com.ruoyi.system.service.ITbJbService;
import com.ruoyi.common.core.text.Convert;

/**
 * 举报记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
@Service
public class TbJbServiceImpl implements ITbJbService 
{
    @Autowired
    private TbJbMapper tbJbMapper;

    /**
     * 查询举报记录
     * 
     * @param id 举报记录ID
     * @return 举报记录
     */
    @Override
    public TbJb selectTbJbById(Long id)
    {
        return tbJbMapper.selectTbJbById(id);
    }

    /**
     * 查询举报记录列表
     * 
     * @param tbJb 举报记录
     * @return 举报记录
     */
    @Override
    public List<TbJb> selectTbJbList(TbJb tbJb)
    {
        return tbJbMapper.selectTbJbList(tbJb);
    }

    /**
     * 新增举报记录
     * 
     * @param tbJb 举报记录
     * @return 结果
     */
    @Override
    public int insertTbJb(TbJb tbJb)
    {
        tbJb.setCreateTime(DateUtils.getNowDate());
        return tbJbMapper.insertTbJb(tbJb);
    }

    /**
     * 修改举报记录
     * 
     * @param tbJb 举报记录
     * @return 结果
     */
    @Override
    public int updateTbJb(TbJb tbJb)
    {
        return tbJbMapper.updateTbJb(tbJb);
    }

    /**
     * 删除举报记录对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTbJbByIds(String ids)
    {
        return tbJbMapper.deleteTbJbByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除举报记录信息
     * 
     * @param id 举报记录ID
     * @return 结果
     */
    @Override
    public int deleteTbJbById(Long id)
    {
        return tbJbMapper.deleteTbJbById(id);
    }
}
