package io.renren.modules.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;
import io.renren.modules.sys.dao.LzUserDao;
import io.renren.modules.sys.entity.LzUserEntity;
import io.renren.modules.sys.service.LzUserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Map;


@Service("lzUserService")
public class LzUserServiceImpl extends ServiceImpl<LzUserDao, LzUserEntity> implements LzUserService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        String cardNumber = (String)params.get("cardNumber");
        String mobile = (String)params.get("mobile");
        String name = (String)params.get("name");
        //System.out.println("mobile:"+mobile);
        //System.out.println("name:"+name);
        IPage<LzUserEntity> page = this.page(
                new Query<LzUserEntity>().getPage(params),
                new QueryWrapper<LzUserEntity>()
                        .like(StringUtils.isNotBlank(cardNumber),"card_number", cardNumber)
                        .like(StringUtils.isNotBlank(mobile),"mobile",mobile)
                        .like(StringUtils.isNotBlank(name),"username",name)
        );

        return new PageUtils(page);
    }

}
