package io.renren.modules.sys.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.sys.entity.LzRechargeRecordEntity;

import java.util.Map;

/**
 * 
 *
 * @author Mark
 * @email sunlightcs@gmail.com
 * @date 2019-05-20 15:14:00
 */
public interface LzRechargeRecordService extends IService<LzRechargeRecordEntity> {

    PageUtils queryPage(Map<String, Object> params);

    //public void addRechargeRecord(LzRechargeRecordEntity lzRechargeRecordEntity);
}

