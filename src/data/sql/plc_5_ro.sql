CREATE TABLE `plc_5_ro` (
	`w_dt` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '데이터 수집 시간',
	`TEMP` DOUBLE NULL DEFAULT NULL COMMENT '온도',
	`HUMIDITY` DOUBLE NULL DEFAULT NULL COMMENT '습도',
	`EMERGENCY` INT(11) NULL DEFAULT NULL COMMENT 'EMERGENCY',
	`AIRCON_STATUS` INT(11) NULL DEFAULT NULL COMMENT '에어컨 상태',
	`AIRCON_MIN_VALUE` DOUBLE NULL DEFAULT NULL COMMENT '에어컨 MIN',
	`AIRCON_MAX_VALUE` DOUBLE NULL DEFAULT NULL COMMENT '에어컨 MAX',
	INDEX `dt_ky` (`w_dt`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
