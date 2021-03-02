package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbLq;

/**
 * 领取记录Service接口
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
public interface ITbLqService 
{
    /**
     * 查询领取记录
     * 
     * @param id 领取记录ID
     * @return 领取记录
     */
    public TbLq selectTbLqById(Long id);

    /**
     * 查询领取记录列表
     * 
     * @param tbLq 领取记录
     * @return 领取记录集合
     */
    public List<TbLq> selectTbLqList(TbLq tbLq);

    /**
     * 新增领取记录
     * 
     * @param tbLq 领取记录
     * @return 结果
     */
    public int insertTbLq(TbLq tbLq);

    /**
     * 修改领取记录
     * 
     * @param tbLq 领取记录
     * @return 结果
     */
    public int updateTbLq(TbLq tbLq);

    /**
     * 批量删除领取记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTbLqByIds(String ids);

    /**
     * 删除领取记录信息
     * 
     * @param id 领取记录ID
     * @return 结果
     */
    public int deleteTbLqById(Long id);
}
