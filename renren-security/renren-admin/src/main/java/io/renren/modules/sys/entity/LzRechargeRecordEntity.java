package io.renren.modules.sys.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 
 * @author Mark
 * @email sunlightcs@gmail.com
 * @date 2019-05-20 15:14:00
 */
@Data
@TableName("lz_recharge_record")
public class LzRechargeRecordEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 充值记录
	 */
	@TableId
	private Long rechargeId;
	/**
	 * 会员卡号
	 */
	private Long cardNumber;
	/**
	 * 充值金额
	 */
	private Float money;
	/**
	 * 充值时间
	 */
	private Date rechargeDate;

}
