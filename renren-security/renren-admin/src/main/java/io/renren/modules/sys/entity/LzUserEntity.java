package io.renren.modules.sys.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 开卡用户
 * 
 * @author Mark
 * @email sunlightcs@gmail.com
 * @date 2019-05-18 15:51:04
 */
@Data
@TableName("lz_user")
public class LzUserEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Long userId;
	/**
	 * 卡号
	 */
	private Long cardNumber;
	/**
	 * 用户名
	 */
	private String username;
	/**
	 * 手机号
	 */
	private String mobile;
	/**
	 * 车牌号
	 */
	private String carNumber;
	/**
	 * 
	 */
	private Float money;
	/**
	 * 状态  0：禁用   1：正常
	 */
	private Integer status;
	/**
	 * 注册时间
	 */
	private Date createTime;
	/**
	 * 洗车次数
	 */
	private Integer washTimes;
	/**
	 * 打蜡次数
	 */
	private Integer waxTimes;
	/**
	 * 性别，默认'男'  0: '女' 1: '男'
	 */
	private Integer sex;

}
