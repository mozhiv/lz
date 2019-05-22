package io.renren.modules.sys.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;
import io.renren.modules.sys.entity.LzConsumptionEntity;
import io.renren.modules.sys.entity.LzUserEntity;
import io.renren.modules.sys.service.LzConsumptionService;
import io.renren.modules.sys.service.LzUserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.Map;



/**
 * 
 *
 * @author Mark
 * @email sunlightcs@gmail.com
 * @date 2019-05-20 15:14:00
 */
@RestController
@RequestMapping("sys/lzconsumption")
public class LzConsumptionController {
    @Autowired
    private LzConsumptionService lzConsumptionService;
    @Autowired
    private LzUserService lzUserService;
    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("sys:lzconsumption:list")
    public R list(@RequestParam Map<String, Object> params){
        if(params.get("sidx").equals("") || params.get("sidx").toString()==null){
            params.put("sidx","date_time");
            params.put("order","desc");
        }
        PageUtils page = lzConsumptionService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{consumptionId}")
    @RequiresPermissions("sys:lzconsumption:info")
    public R info(@PathVariable("consumptionId") Long consumptionId){
        LzConsumptionEntity lzConsumption = lzConsumptionService.getById(consumptionId);

        return R.ok().put("lzConsumption", lzConsumption);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("sys:lzconsumption:save")
    @Transactional
    public R save(@RequestBody LzConsumptionEntity lzConsumption){
        // 更新用户余额
        Long cardNumber = lzConsumption.getCardNumber();
        LzUserEntity userEntity = lzUserService.getOne(new QueryWrapper<LzUserEntity>().eq("card_number",cardNumber));
        System.out.println(userEntity.getMoney()-lzConsumption.getMoney());
        if(userEntity.getMoney()-lzConsumption.getMoney()<0){
            return R.error("余额不足，请及时充值！");
        }
        userEntity.setMoney(userEntity.getMoney()-lzConsumption.getMoney());
        lzUserService.updateById(userEntity);
        // 插入消费记录
        lzConsumptionService.save(lzConsumption);

        return R.ok();
    }
    @RequestMapping("/updateWashTimes")
    @RequiresPermissions("sys:lzconsumption:update")
    public R updateWashTimes(@RequestBody Long cardNumber){
        System.out.println(cardNumber);
        // 更新用户洗车次数信息
        LzUserEntity userEntity = lzUserService.getOne(new QueryWrapper<LzUserEntity>().eq("card_number",cardNumber));
        userEntity.setWashTimes(userEntity.getWashTimes()-1);
        lzUserService.updateById(userEntity);
        // 插入消费记录
        LzConsumptionEntity lzConsumption = new LzConsumptionEntity();
        lzConsumption.setCardNumber(cardNumber);
        lzConsumption.setMoney(0f);
        lzConsumption.setRemarks("【会员】免费洗车次数");
        lzConsumptionService.save(lzConsumption);
        return R.ok();
    }

    @RequestMapping("/updateWaxTimes")
    @RequiresPermissions("sys:lzconsumption:update")
    public R updateWaxTimes(@RequestBody Long cardNumber){
        System.out.println(cardNumber);
        // 更新用户打蜡次数信息
        LzUserEntity userEntity = lzUserService.getOne(new QueryWrapper<LzUserEntity>().eq("card_number",cardNumber));
        userEntity.setWaxTimes(userEntity.getWaxTimes()-1);
        lzUserService.updateById(userEntity);
        // 插入消费记录
        LzConsumptionEntity lzConsumption = new LzConsumptionEntity();
        lzConsumption.setCardNumber(cardNumber);
        lzConsumption.setMoney(0f);
        lzConsumption.setRemarks("【会员】免费打蜡次数");
        lzConsumptionService.save(lzConsumption);
        return R.ok();
    }

    @RequestMapping("/updateDisinfectionTimes")
    @RequiresPermissions("sys:lzconsumption:update")
    public R updateDisinfectionTimes(@RequestBody Long cardNumber){
        System.out.println(cardNumber);
        // 更新用户消毒次数信息
        LzUserEntity userEntity = lzUserService.getOne(new QueryWrapper<LzUserEntity>().eq("card_number",cardNumber));
        userEntity.setDisinfectionTimes(userEntity.getDisinfectionTimes()-1);
        lzUserService.updateById(userEntity);
        // 插入消费记录
        LzConsumptionEntity lzConsumption = new LzConsumptionEntity();
        lzConsumption.setCardNumber(cardNumber);
        lzConsumption.setMoney(0f);
        lzConsumption.setRemarks("【会员】免费消毒次数");
        lzConsumptionService.save(lzConsumption);
        return R.ok();
    }

    /**
     * 修改
     */
    /*@RequestMapping("/update")
    @RequiresPermissions("sys:lzconsumption:update")
    public R update(@RequestBody LzConsumptionEntity lzConsumption){
        ValidatorUtils.validateEntity(lzConsumption);
        lzConsumptionService.updateById(lzConsumption);
        
        return R.ok();
    }

    *//**
     * 删除
     *//*
    @RequestMapping("/delete")
    @RequiresPermissions("sys:lzconsumption:delete")
    public R delete(@RequestBody Long[] consumptionIds){
        lzConsumptionService.removeByIds(Arrays.asList(consumptionIds));

        return R.ok();
    }*/

}
