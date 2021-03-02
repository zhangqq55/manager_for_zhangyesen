package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TbWztype;

/**
 * 物资类型Service接口
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
public interface ITbWztypeService 
{
    /**
     * 查询物资类型
     * 
     * @param id 物资类型ID
     * @return 物资类型
     */
    public TbWztype selectTbWztypeById(Long id);

    /**
     * 查询物资类型列表
     * 
     * @param tbWztype 物资类型
     * @return 物资类型集合
     */
    public List<TbWztype> selectTbWztypeList(TbWztype tbWztype);

    /**
     * 新增物资类型
     * 
     * @param tbWztype 物资类型
     * @return 结果
     */
    public int insertTbWztype(TbWztype tbWztype);

    /**
     * 修改物资类型
     * 
     * @param tbWztype 物资类型
     * @return 结果
     */
    public int updateTbWztype(TbWztype tbWztype);

    /**
     * 批量删除物资类型
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTbWztypeByIds(String ids);

    /**
     * 删除物资类型信息
     * 
     * @param id 物资类型ID
     * @return 结果
     */
    public int deleteTbWztypeById(Long id);
}
