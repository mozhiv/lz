package io.renren.modules.sys.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 
 * 
 * @author Mark
 * @email sunlightcs@gmail.com
 * @date 2019-05-20 15:14:00
 */
@Data
@TableName("lz_consumption")
public class LzConsumptionEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 消费ID
	 */
	@TableId
	private Long consumptionId;
	/**
	 * 卡号
	 */
	private Long cardNumber;
	/**
	 * 消费金额
	 */
	private BigDecimal money;
	/**
	 * 消费时间
	 */
	private Date dateTime;
	/**
	 * 消费说明
	 */
	private String remarks;

}
