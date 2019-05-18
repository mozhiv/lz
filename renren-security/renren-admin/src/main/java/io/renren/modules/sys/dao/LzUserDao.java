package io.renren.modules.sys.dao;

import io.renren.modules.sys.entity.LzUserEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 开卡用户
 * 
 * @author Mark
 * @email sunlightcs@gmail.com
 * @date 2019-05-18 15:51:04
 */
@Mapper
public interface LzUserDao extends BaseMapper<LzUserEntity> {
	
}
