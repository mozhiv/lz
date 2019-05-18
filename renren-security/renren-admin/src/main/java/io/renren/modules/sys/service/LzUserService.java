package io.renren.modules.sys.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.sys.entity.LzUserEntity;

import java.util.Map;

/**
 * 开卡用户
 *
 * @author Mark
 * @email sunlightcs@gmail.com
 * @date 2019-05-18 15:51:04
 */
public interface LzUserService extends IService<LzUserEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

