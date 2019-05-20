package io.renren.modules.sys.controller;

import java.util.Arrays;
import java.util.Map;

import io.renren.common.validator.ValidatorUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.modules.sys.entity.LzRechargeRecordEntity;
import io.renren.modules.sys.service.LzRechargeRecordService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



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

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("sys:lzrechargerecord:list")
    public R list(@RequestParam Map<String, Object> params){
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
    public R save(@RequestBody LzRechargeRecordEntity lzRechargeRecord){
        lzRechargeRecordService.save(lzRechargeRecord);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("sys:lzrechargerecord:update")
    public R update(@RequestBody LzRechargeRecordEntity lzRechargeRecord){
        ValidatorUtils.validateEntity(lzRechargeRecord);
        lzRechargeRecordService.updateById(lzRechargeRecord);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("sys:lzrechargerecord:delete")
    public R delete(@RequestBody Long[] rechargeIds){
        lzRechargeRecordService.removeByIds(Arrays.asList(rechargeIds));

        return R.ok();
    }

}
