package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TbCf;

/**
 * 违章违法Mapper接口
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
public interface TbCfMapper 
{
    /**
     * 查询违章违法
     * 
     * @param id 违章违法ID
     * @return 违章违法
     */
    public TbCf selectTbCfById(Long id);

    /**
     * 查询违章违法列表
     * 
     * @param tbCf 违章违法
     * @return 违章违法集合
     */
    public List<TbCf> selectTbCfList(TbCf tbCf);

    /**
     * 新增违章违法
     * 
     * @param tbCf 违章违法
     * @return 结果
     */
    public int insertTbCf(TbCf tbCf);

    /**
     * 修改违章违法
     * 
     * @param tbCf 违章违法
     * @return 结果
     */
    public int updateTbCf(TbCf tbCf);

    /**
     * 删除违章违法
     * 
     * @param id 违章违法ID
     * @return 结果
     */
    public int deleteTbCfById(Long id);

    /**
     * 批量删除违章违法
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTbCfByIds(String[] ids);
}
