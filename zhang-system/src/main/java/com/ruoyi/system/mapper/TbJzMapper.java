package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TbJz;

/**
 * 捐赠记录Mapper接口
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
public interface TbJzMapper 
{
    /**
     * 查询捐赠记录
     * 
     * @param id 捐赠记录ID
     * @return 捐赠记录
     */
    public TbJz selectTbJzById(Long id);

    /**
     * 查询捐赠记录列表
     * 
     * @param tbJz 捐赠记录
     * @return 捐赠记录集合
     */
    public List<TbJz> selectTbJzList(TbJz tbJz);

    /**
     * 新增捐赠记录
     * 
     * @param tbJz 捐赠记录
     * @return 结果
     */
    public int insertTbJz(TbJz tbJz);

    /**
     * 修改捐赠记录
     * 
     * @param tbJz 捐赠记录
     * @return 结果
     */
    public int updateTbJz(TbJz tbJz);

    /**
     * 删除捐赠记录
     * 
     * @param id 捐赠记录ID
     * @return 结果
     */
    public int deleteTbJzById(Long id);

    /**
     * 批量删除捐赠记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTbJzByIds(String[] ids);
}
