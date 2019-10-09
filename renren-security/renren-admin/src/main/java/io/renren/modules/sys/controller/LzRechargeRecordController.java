package io.renren.modules.sys.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;
import io.renren.modules.sys.entity.LzRechargeRecordEntity;
import io.renren.modules.sys.entity.LzUserEntity;
import io.renren.modules.sys.service.LzRechargeRecordService;
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
@RequestMapping("sys/lzrechargerecord")
public class LzRechargeRecordController {
    @Autowired
    private LzRechargeRecordService lzRechargeRecordService;
    @Autowired
    private LzUserService lzUserService;
    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("sys:lzrechargerecord:list")
    public R list(@RequestParam Map<String, Object> params){
        //System.out.println(params.get("sidx").toString());
        if(params.get("sidx").equals("") || params.get("sidx").toString()==null){
            params.put("sidx","recharge_date");
            params.put("order","desc");
        }
        //System.out.println("sidx:" + params.get("sidx").toString());
        PageUtils page = lzRechargeRecordService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{rechargeId}")
    @RequiresPermissions("sys:lzrechargerecord:info")
    public R info(@PathVariable("rechargeId") Long rechargeId){
        LzRechargeRecordEntity lzRechargeRecord = lzRechargeRecordService.getById(rechargeId);

        return R.ok().put("lzRechargeRecord", lzRechargeRecord);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("sys:lzrechargerecord:save")
    @Transactional
    public R save(@RequestBody LzRechargeRecordEntity lzRechargeRecord){
        // 更新用户余额
        Long cardNumber = lzRechargeRecord.getCardNumber();
        LzUserEntity userEntity = lzUserService.getOne(new QueryWrapper<LzUserEntity>().eq("card_number",cardNumber));
        //userEntity.setMoney(userEntity.getMoney()+lzRechargeRecord.getMoney());
        userEntity.setMoney(userEntity.getMoney().add(lzRechargeRecord.getMoney()));
        lzUserService.updateById(userEntity);
        // 插入充值记录
        lzRechargeRecordService.save(lzRechargeRecord);

        return R.ok();
    }

    /**
     * 修改
     *//*
    @RequestMapping("/update")
    @RequiresPermissions("sys:lzrechargerecord:update")
    public R update(@RequestBody LzRechargeRecordEntity lzRechargeRecord){
        ValidatorUtils.validateEntity(lzRechargeRecord);
        lzRechargeRecordService.updateById(lzRechargeRecord);
        
        return R.ok();
    }

    *//**
     * 删除
     *//*
    @RequestMapping("/delete")
    @RequiresPermissions("sys:lzrechargerecord:delete")
    public R delete(@RequestBody Long[] rechargeIds){
        lzRechargeRecordService.removeByIds(Arrays.asList(rechargeIds));

        return R.ok();
    }*/

}
