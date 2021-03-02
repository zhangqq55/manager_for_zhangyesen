package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbWz;

/**
 * 物资信息Service接口
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
public interface ITbWzService 
{
    /**
     * 查询物资信息
     * 
     * @param id 物资信息ID
     * @return 物资信息
     */
    public TbWz selectTbWzById(Long id);

    /**
     * 查询物资信息列表
     * 
     * @param tbWz 物资信息
     * @return 物资信息集合
     */
    public List<TbWz> selectTbWzList(TbWz tbWz);

    /**
     * 新增物资信息
     * 
     * @param tbWz 物资信息
     * @return 结果
     */
    public int insertTbWz(TbWz tbWz);

    /**
     * 修改物资信息
     * 
     * @param tbWz 物资信息
     * @return 结果
     */
    public int updateTbWz(TbWz tbWz);

    /**
     * 批量删除物资信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTbWzByIds(String ids);

    /**
     * 删除物资信息信息
     * 
     * @param id 物资信息ID
     * @return 结果
     */
    public int deleteTbWzById(Long id);
}
