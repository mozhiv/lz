package io.renren.modules.sys.controller;

import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;
import io.renren.common.validator.ValidatorUtils;
import io.renren.modules.sys.entity.LzUserEntity;
import io.renren.modules.sys.service.LzUserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 开卡用户
 *
 * @author Mark
 * @email sunlightcs@gmail.com
 * @date 2019-05-18 15:51:04
 */
@RestController
@RequestMapping("sys/lzuser")
public class LzUserController {
    @Autowired
    private LzUserService lzUserService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("sys:lzuser:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = lzUserService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{userId}")
    @RequiresPermissions("sys:lzuser:info")
    public R info(@PathVariable("userId") Long userId){
        LzUserEntity lzUser = lzUserService.getById(userId);

        return R.ok().put("lzUser", lzUser);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("sys:lzuser:save")
    public R save(@RequestBody LzUserEntity lzUser){
        lzUserService.save(lzUser);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("sys:lzuser:update")
    public R update(@RequestBody LzUserEntity lzUser){
        ValidatorUtils.validateEntity(lzUser);
        lzUserService.updateById(lzUser);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("sys:lzuser:delete")
    public R delete(@RequestBody Long[] userIds){
        lzUserService.removeByIds(Arrays.asList(userIds));

        return R.ok();
    }

}
