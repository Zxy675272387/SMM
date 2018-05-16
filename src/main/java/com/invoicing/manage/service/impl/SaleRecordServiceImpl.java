package com.invoicing.manage.service.impl;

import com.invoicing.manage.entity.SaleRecordEntity;
import com.invoicing.manage.service.SaleRecordService;
import com.invoicing.manage.mapper.SaleRecordMapper;

import java.util.HashMap;
import java.util.Map;
import java.util.List;

import com.invoicing.manage.comment.entity.PageInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.apache.ibatis.session.RowBounds;

@Service("saleRecordService")
public class SaleRecordServiceImpl implements SaleRecordService {

    @Autowired
    private SaleRecordMapper saleRecordMapper;

    /**
     * 通过主键id 删除
     *
     * @param id
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
    public int deleteByPrimaryKey(Long id) {
        return saleRecordMapper.deleteByPrimaryKey(id);
    }

    /**
     * 插入实体
     *
     * @param record
     * @return
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
    public int insertSelective(SaleRecordEntity record) {
        return saleRecordMapper.insertSelective(record);
    }

    /**
     * 通过主键id 获取实体对象
     *
     * @param id
     * @return
     */
    @Override
    public SaleRecordEntity selectByPrimaryKey(Long id) {
        return saleRecordMapper.selectByPrimaryKey(id);
    }

    /**
     * 通过主键id 更新实体
     *
     * @param record
     * @return 1成功  其它失败
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = RuntimeException.class)
    public int updateByPrimaryKeySelective(SaleRecordEntity record) {
        return saleRecordMapper.updateByPrimaryKeySelective(record);
    }

    /**
     * 通过map参数获取列表
     *
     * @param params
     * @return List<SaleRecordEntity>
     */
    @Override
    public List<SaleRecordEntity> getList(Map<String, Object> params) {
        return saleRecordMapper.getList(params);
    }

    /**
     * 通过map参数获取列表 分页
     *
     * @param params
     * @return PageInfo<SaleRecordEntity>
     */
    @Override
    public PageInfo<SaleRecordEntity> getList(PageInfo<SaleRecordEntity> pageInfo, Map<String, Object> params) {
        List<SaleRecordEntity> list = saleRecordMapper.getList(params,
                new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));
        Integer total = saleRecordMapper.getListCount(params);
        pageInfo.setRows(list);
        pageInfo.setTotal(total);
        return pageInfo;
    }

    @Override
    public PageInfo<SaleRecordEntity> getListTop(Map<String,Object> params, PageInfo<SaleRecordEntity> pageInfo) {
        List<SaleRecordEntity> list = saleRecordMapper.getListTop(params,
                new RowBounds(pageInfo.getStart(), pageInfo.getPageSize()));

        Integer total = saleRecordMapper.getListCountTop(params);
        System.out.print("from service"+saleRecordMapper.getTotal(params));
        pageInfo.setRows(list);
        pageInfo.setTotal(total);
        return pageInfo;
    }

    /**
     * 通过map参数获取 总数
     *
     * @param params
     * @return int
     */
    @Override
    public int getListCount(Map<String, Object> params) {
        return saleRecordMapper.getListCount(params);
    }
    public float getTotal(Map<String, Object> params) {
        return saleRecordMapper.getTotal(params);
    }

}