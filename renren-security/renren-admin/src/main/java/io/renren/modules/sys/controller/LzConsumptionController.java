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

import io.renren.modules.sys.entity.LzConsumptionEntity;
import io.renren.modules.sys.service.LzConsumptionService;
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
@RequestMapping("sys/lzconsumption")
public class LzConsumptionController {
    @Autowired
    private LzConsumptionService lzConsumptionService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("sys:lzconsumption:list")
    public R list(@RequestParam Map<String, Object> params){
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
    public R save(@RequestBody LzConsumptionEntity lzConsumption){
        lzConsumptionService.save(lzConsumption);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("sys:lzconsumption:update")
    public R update(@RequestBody LzConsumptionEntity lzConsumption){
        ValidatorUtils.validateEntity(lzConsumption);
        lzConsumptionService.updateById(lzConsumption);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("sys:lzconsumption:delete")
    public R delete(@RequestBody Long[] consumptionIds){
        lzConsumptionService.removeByIds(Arrays.asList(consumptionIds));

        return R.ok();
    }

}
