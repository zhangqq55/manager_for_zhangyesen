package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbZc;

/**
 * 章程Service接口
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
public interface ITbZcService 
{
    /**
     * 查询章程
     * 
     * @param id 章程ID
     * @return 章程
     */
    public TbZc selectTbZcById(Long id);

    /**
     * 查询章程列表
     * 
     * @param tbZc 章程
     * @return 章程集合
     */
    public List<TbZc> selectTbZcList(TbZc tbZc);

    /**
     * 新增章程
     * 
     * @param tbZc 章程
     * @return 结果
     */
    public int insertTbZc(TbZc tbZc);

    /**
     * 修改章程
     * 
     * @param tbZc 章程
     * @return 结果
     */
    public int updateTbZc(TbZc tbZc);

    /**
     * 批量删除章程
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTbZcByIds(String ids);

    /**
     * 删除章程信息
     * 
     * @param id 章程ID
     * @return 结果
     */
    public int deleteTbZcById(Long id);
}
