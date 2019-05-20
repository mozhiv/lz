package io.renren.modules.sys.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.sys.dao.LzRechargeRecordDao;
import io.renren.modules.sys.entity.LzRechargeRecordEntity;
import io.renren.modules.sys.service.LzRechargeRecordService;


@Service("lzRechargeRecordService")
public class LzRechargeRecordServiceImpl extends ServiceImpl<LzRechargeRecordDao, LzRechargeRecordEntity> implements LzRechargeRecordService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<LzRechargeRecordEntity> page = this.page(
                new Query<LzRechargeRecordEntity>().getPage(params),
                new QueryWrapper<LzRechargeRecordEntity>()
        );

        return new PageUtils(page);
    }

}
