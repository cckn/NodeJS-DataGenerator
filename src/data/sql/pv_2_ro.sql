CREATE TABLE `pv_2_ro` (
	`w_dt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '데이터 수집 시간',
	`ACT_PWR` DOUBLE NULL DEFAULT NULL COMMENT '유효 전력',
	`REACT_PWR` DOUBLE NULL DEFAULT NULL COMMENT '무효 전력',
	`PHASE_RS_VOLT` DOUBLE NULL DEFAULT NULL COMMENT 'RS 전압',
	`PHASE_ST_VOLT` DOUBLE NULL DEFAULT NULL COMMENT 'ST 전압',
	`PHASE_TR_VOLT` DOUBLE NULL DEFAULT NULL COMMENT 'TR 전압',
	`PHASE_R_CRNT` DOUBLE NULL DEFAULT NULL COMMENT 'R 전류',
	`PHASE_S_CRNT` DOUBLE NULL DEFAULT NULL COMMENT 'S 전류',
	`PHASE_T_CRNT` DOUBLE NULL DEFAULT NULL COMMENT 'T 전류',
	`FQ` DOUBLE NULL DEFAULT NULL COMMENT '주파수',
	`PF` DOUBLE NULL DEFAULT NULL COMMENT '역률',
	`TOTAL_POWER_AMT` DOUBLE NULL DEFAULT NULL COMMENT '발전량',
	PRIMARY KEY (`w_dt`),
	INDEX `dt_ky` (`w_dt`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
