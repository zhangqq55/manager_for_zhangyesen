package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TbJb;

/**
 * 举报记录Mapper接口
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
public interface TbJbMapper 
{
    /**
     * 查询举报记录
     * 
     * @param id 举报记录ID
     * @return 举报记录
     */
    public TbJb selectTbJbById(Long id);

    /**
     * 查询举报记录列表
     * 
     * @param tbJb 举报记录
     * @return 举报记录集合
     */
    public List<TbJb> selectTbJbList(TbJb tbJb);

    /**
     * 新增举报记录
     * 
     * @param tbJb 举报记录
     * @return 结果
     */
    public int insertTbJb(TbJb tbJb);

    /**
     * 修改举报记录
     * 
     * @param tbJb 举报记录
     * @return 结果
     */
    public int updateTbJb(TbJb tbJb);

    /**
     * 删除举报记录
     * 
     * @param id 举报记录ID
     * @return 结果
     */
    public int deleteTbJbById(Long id);

    /**
     * 批量删除举报记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTbJbByIds(String[] ids);
}
