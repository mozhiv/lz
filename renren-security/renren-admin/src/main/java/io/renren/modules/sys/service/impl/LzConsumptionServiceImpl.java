package io.renren.modules.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;
import io.renren.modules.sys.dao.LzConsumptionDao;
import io.renren.modules.sys.entity.LzConsumptionEntity;
import io.renren.modules.sys.service.LzConsumptionService;
import org.springframework.stereotype.Service;

import java.util.Map;


@Service("lzConsumptionService")
public class LzConsumptionServiceImpl extends ServiceImpl<LzConsumptionDao, LzConsumptionEntity> implements LzConsumptionService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<LzConsumptionEntity> page = this.page(
                new Query<LzConsumptionEntity>().getPage(params),
                new QueryWrapper<LzConsumptionEntity>()
        );

        return new PageUtils(page);
    }

}
