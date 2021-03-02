package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TbDonateer;

/**
 * 捐赠者Mapper接口
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
public interface TbDonateerMapper 
{
    /**
     * 查询捐赠者
     * 
     * @param id 捐赠者ID
     * @return 捐赠者
     */
    public TbDonateer selectTbDonateerById(Long id);

    /**
     * 查询捐赠者列表
     * 
     * @param tbDonateer 捐赠者
     * @return 捐赠者集合
     */
    public List<TbDonateer> selectTbDonateerList(TbDonateer tbDonateer);

    /**
     * 新增捐赠者
     * 
     * @param tbDonateer 捐赠者
     * @return 结果
     */
    public int insertTbDonateer(TbDonateer tbDonateer);

    /**
     * 修改捐赠者
     * 
     * @param tbDonateer 捐赠者
     * @return 结果
     */
    public int updateTbDonateer(TbDonateer tbDonateer);

    /**
     * 删除捐赠者
     * 
     * @param id 捐赠者ID
     * @return 结果
     */
    public int deleteTbDonateerById(Long id);

    /**
     * 批量删除捐赠者
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTbDonateerByIds(String[] ids);
}
