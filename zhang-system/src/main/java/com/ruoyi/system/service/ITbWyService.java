package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbWy;

/**
 * 委员信息Service接口
 *
 * @author ruoyi
 * @date 2021-02-28
 */
public interface ITbWyService
{
    /**
     * 查询委员信息
     *
     * @param id 委员信息ID
     * @return 委员信息
     */
    public TbWy selectTbWyById(Long id);

    /**
     * 查询委员信息列表
     *
     * @param tbWy 委员信息
     * @return 委员信息集合
     */
    public List<TbWy> selectTbWyList(TbWy tbWy);

    /**
     * 新增委员信息
     *
     * @param tbWy 委员信息
     * @return 结果
     */
    public int insertTbWy(TbWy tbWy);

    /**
     * 修改委员信息
     *
     * @param tbWy 委员信息
     * @return 结果
     */
    public int updateTbWy(TbWy tbWy);

    /**
     * 批量删除委员信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTbWyByIds(String ids);

    /**
     * 删除委员信息信息
     *
     * @param id 委员信息ID
     * @return 结果
     */
    public int deleteTbWyById(Long id);
}
