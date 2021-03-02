package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbWztypeMapper;
import com.ruoyi.system.domain.TbWztype;
import com.ruoyi.system.service.ITbWztypeService;
import com.ruoyi.common.core.text.Convert;

/**
 * 物资类型Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-02-28
 */
@Service
public class TbWztypeServiceImpl implements ITbWztypeService 
{
    @Autowired
    private TbWztypeMapper tbWztypeMapper;

    /**
     * 查询物资类型
     * 
     * @param id 物资类型ID
     * @return 物资类型
     */
    @Override
    public TbWztype selectTbWztypeById(Long id)
    {
        return tbWztypeMapper.selectTbWztypeById(id);
    }

    /**
     * 查询物资类型列表
     * 
     * @param tbWztype 物资类型
     * @return 物资类型
     */
    @Override
    public List<TbWztype> selectTbWztypeList(TbWztype tbWztype)
    {
        return tbWztypeMapper.selectTbWztypeList(tbWztype);
    }

    /**
     * 新增物资类型
     * 
     * @param tbWztype 物资类型
     * @return 结果
     */
    @Override
    public int insertTbWztype(TbWztype tbWztype)
    {
        tbWztype.setCreateTime(DateUtils.getNowDate());
        return tbWztypeMapper.insertTbWztype(tbWztype);
    }

    /**
     * 修改物资类型
     * 
     * @param tbWztype 物资类型
     * @return 结果
     */
    @Override
    public int updateTbWztype(TbWztype tbWztype)
    {
        tbWztype.setUpdateTime(DateUtils.getNowDate());
        return tbWztypeMapper.updateTbWztype(tbWztype);
    }

    /**
     * 删除物资类型对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTbWztypeByIds(String ids)
    {
        return tbWztypeMapper.deleteTbWztypeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除物资类型信息
     * 
     * @param id 物资类型ID
     * @return 结果
     */
    @Override
    public int deleteTbWztypeById(Long id)
    {
        return tbWztypeMapper.deleteTbWztypeById(id);
    }
}
