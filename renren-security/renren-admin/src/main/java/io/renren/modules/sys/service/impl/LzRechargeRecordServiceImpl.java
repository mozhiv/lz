package io.renren.modules.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;
import io.renren.modules.sys.dao.LzRechargeRecordDao;
import io.renren.modules.sys.entity.LzRechargeRecordEntity;
import io.renren.modules.sys.service.LzRechargeRecordService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Map;


@Service("lzRechargeRecordService")
public class LzRechargeRecordServiceImpl extends ServiceImpl<LzRechargeRecordDao, LzRechargeRecordEntity> implements LzRechargeRecordService {

    private LzRechargeRecordDao lzRechargeRecordDao;
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        String cardNumber = (String)params.get("cardNumber");
        IPage<LzRechargeRecordEntity> page = this.page(
                new Query<LzRechargeRecordEntity>().getPage(params),
                new QueryWrapper<LzRechargeRecordEntity>()
                        .like(StringUtils.isNotBlank(cardNumber),"card_number",cardNumber)
        );

        return new PageUtils(page);
    }

    public void addRechargeRecord(LzRechargeRecordEntity lzRechargeRecordEntity){
        lzRechargeRecordDao.insert(lzRechargeRecordEntity);
    }

}
