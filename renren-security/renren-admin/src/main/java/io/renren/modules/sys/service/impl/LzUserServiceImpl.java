package io.renren.modules.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;
import io.renren.modules.sys.dao.LzUserDao;
import io.renren.modules.sys.entity.LzUserEntity;
import io.renren.modules.sys.service.LzUserService;
import org.springframework.stereotype.Service;

import java.util.Map;


@Service("lzUserService")
public class LzUserServiceImpl extends ServiceImpl<LzUserDao, LzUserEntity> implements LzUserService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<LzUserEntity> page = this.page(
                new Query<LzUserEntity>().getPage(params),
                new QueryWrapper<LzUserEntity>()
        );

        return new PageUtils(page);
    }

}
