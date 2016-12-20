# MySQL dump of database 'iultechc_fron200' on host 'localhost'
# Backup Date and Time: 2016-04-02 17:24
# Built by IUL ERP 2.4.RC1
# http://www.iscte-iul.pt/home.aspx
# Company: ERP
# User: Administrator

# Compatibility: 2.4.1


SET NAMES utf8;


### Structure of table `fl94_areas` ###

DROP TABLE IF EXISTS `fl94_areas`;

CREATE TABLE `fl94_areas` (
  `area_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`area_code`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_areas` ###

INSERT INTO `fl94_areas` VALUES
('1', 'Global', '0');

### Structure of table `fl94_attachments` ###

DROP TABLE IF EXISTS `fl94_attachments`;

CREATE TABLE `fl94_attachments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_no` int(11) NOT NULL DEFAULT '0',
  `trans_no` int(11) NOT NULL DEFAULT '0',
  `unique_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `filename` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `filetype` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type_no` (`type_no`,`trans_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_attachments` ###


### Structure of table `fl94_audit_trail` ###

DROP TABLE IF EXISTS `fl94_audit_trail`;

CREATE TABLE `fl94_audit_trail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `trans_no` int(11) unsigned NOT NULL DEFAULT '0',
  `user` smallint(6) unsigned NOT NULL DEFAULT '0',
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fiscal_year` int(11) NOT NULL DEFAULT '0',
  `gl_date` date NOT NULL DEFAULT '0000-00-00',
  `gl_seq` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Seq` (`fiscal_year`,`gl_date`,`gl_seq`),
  KEY `Type_and_Number` (`type`,`trans_no`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_audit_trail` ###

INSERT INTO `fl94_audit_trail` VALUES
('1', '18', '1', '1', '2015-05-05 14:08:02', NULL, '1', '2015-05-05', '0'),
('2', '25', '1', '1', '2016-03-22 01:20:49', NULL, '1', '2015-05-05', '1'),
('3', '30', '1', '1', '2015-05-05 14:09:54', NULL, '1', '2015-05-10', '0'),
('4', '13', '1', '1', '2016-03-22 01:20:49', NULL, '1', '2015-05-10', '11'),
('5', '10', '1', '1', '2016-03-22 01:20:49', NULL, '1', '2015-05-10', '12'),
('6', '12', '1', '1', '2016-03-22 01:20:49', NULL, '1', '2015-05-10', '13'),
('7', '26', '1', '1', '2016-03-22 01:20:49', 'Quick production.', '1', '2015-05-05', '2'),
('8', '18', '2', '1', '2015-05-05 14:22:32', NULL, '1', '2015-05-05', '0'),
('9', '25', '2', '1', '2016-03-22 01:20:49', NULL, '1', '2015-05-05', '3'),
('10', '20', '1', '1', '2016-03-22 01:20:49', NULL, '1', '2015-05-05', '4'),
('11', '30', '2', '1', '2015-05-07 07:55:15', NULL, '1', '2015-05-07', '0'),
('12', '13', '2', '1', '2016-03-22 01:20:49', NULL, '1', '2015-05-07', '5'),
('13', '10', '2', '1', '2016-03-22 01:20:49', NULL, '1', '2015-05-07', '6'),
('14', '12', '2', '1', '2016-03-22 01:20:49', NULL, '1', '2015-05-07', '7'),
('15', '30', '3', '1', '2015-05-07 08:08:24', NULL, '1', '2015-05-07', '0'),
('16', '30', '4', '1', '2015-05-07 09:18:44', NULL, '1', '2015-05-07', '0'),
('17', '30', '5', '1', '2015-05-07 11:42:41', NULL, '1', '2015-05-07', '0'),
('18', '13', '3', '1', '2016-03-22 01:20:49', NULL, '1', '2015-05-07', '8'),
('19', '10', '3', '1', '2016-03-22 01:20:49', NULL, '1', '2015-05-07', '9'),
('20', '30', '6', '1', '2015-05-07 14:02:35', NULL, '1', '2015-05-07', '0'),
('21', '30', '7', '1', '2015-05-07 14:05:38', NULL, '1', '2015-05-07', '0'),
('22', '13', '4', '1', '2015-05-07 14:05:38', NULL, '1', '2015-05-07', '0'),
('23', '10', '4', '1', '2015-05-07 14:05:38', NULL, '1', '2015-05-07', '0'),
('24', '12', '3', '1', '2015-05-07 14:05:38', NULL, '1', '2015-05-07', '0'),
('25', '26', '2', '1', '2015-05-07 15:59:34', NULL, '1', '2015-05-07', NULL),
('26', '26', '3', '1', '2015-05-07 15:59:01', NULL, '1', '2015-05-07', '0'),
('27', '26', '2', '1', '2015-05-07 15:59:34', 'Released.', '1', '2015-05-07', '0'),
('28', '1', '1', '1', '2016-03-22 01:20:49', NULL, '1', '2015-05-07', '10'),
('29', '0', '1', '1', '2016-03-22 01:20:49', NULL, '1', '2015-12-31', '14');

### Structure of table `fl94_bank_accounts` ###

DROP TABLE IF EXISTS `fl94_bank_accounts`;

CREATE TABLE `fl94_bank_accounts` (
  `account_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_type` smallint(6) NOT NULL DEFAULT '0',
  `bank_account_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_account_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_address` tinytext COLLATE utf8_unicode_ci,
  `bank_curr_code` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_curr_act` tinyint(1) NOT NULL DEFAULT '0',
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `bank_charge_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_reconciled_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ending_reconcile_balance` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bank_account_name` (`bank_account_name`),
  KEY `bank_account_number` (`bank_account_number`),
  KEY `account_code` (`account_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_bank_accounts` ###

INSERT INTO `fl94_bank_accounts` VALUES
('1.1.1', '0', 'Bank BPP', 'N/A', 'Bank BPP', NULL, 'EUR', '0', '1', '6.8.1.1', '2016-04-02 00:00:00', '0', '0'),
('1.1.2', '3', 'Bank BFE', 'N/A', 'N/A', NULL, 'EUR', '1', '2', '6.8.1.1', '2016-04-02 00:00:00', '0', '0');

### Structure of table `fl94_bank_trans` ###

DROP TABLE IF EXISTS `fl94_bank_trans`;

CREATE TABLE `fl94_bank_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) DEFAULT NULL,
  `trans_no` int(11) DEFAULT NULL,
  `bank_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_date` date NOT NULL DEFAULT '0000-00-00',
  `amount` double DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `person_type_id` int(11) NOT NULL DEFAULT '0',
  `person_id` tinyblob,
  `reconciled` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bank_act` (`bank_act`,`ref`),
  KEY `type` (`type`,`trans_no`),
  KEY `bank_act_2` (`bank_act`,`reconciled`),
  KEY `bank_act_3` (`bank_act`,`trans_date`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_bank_trans` ###

INSERT INTO `fl94_bank_trans` VALUES
('1', '12', '1', '2', '001/2015', '2015-05-10', '6240', '0', '0', '2', '1', '2016-04-02'),
('2', '12', '2', '2', '002/2015', '2015-05-07', '300', '0', '0', '2', '1', '2016-04-02'),
('3', '12', '3', '2', '003/2015', '2015-05-07', '0', '0', '0', '2', '1', NULL),
('4', '1', '1', '1', '001/2015', '2015-05-07', '-5', '0', '0', '0', 'Goods received', NULL);

### Structure of table `fl94_bom` ###

DROP TABLE IF EXISTS `fl94_bom`;

CREATE TABLE `fl94_bom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `component` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workcentre_added` int(11) NOT NULL DEFAULT '0',
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT '1',
  PRIMARY KEY (`parent`,`component`,`workcentre_added`,`loc_code`),
  KEY `component` (`component`),
  KEY `id` (`id`),
  KEY `loc_code` (`loc_code`),
  KEY `parent` (`parent`,`loc_code`),
  KEY `workcentre_added` (`workcentre_added`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_bom` ###

INSERT INTO `fl94_bom` VALUES
('8', '201', '101', '1', 'DEF', '1'),
('7', '201', '202', '1', 'DEF', '1'),
('5', 'DIR-636', 'DH1SY0D0102M', '1', 'DEF', '2'),
('6', 'DIR-636', 'DH1TB0M0703M', '1', 'DEF', '1');

### Structure of table `fl94_budget_trans` ###

DROP TABLE IF EXISTS `fl94_budget_trans`;

CREATE TABLE `fl94_budget_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `memo_` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `dimension_id` int(11) DEFAULT '0',
  `dimension2_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `Account` (`account`,`tran_date`,`dimension_id`,`dimension2_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_budget_trans` ###

INSERT INTO `fl94_budget_trans` VALUES
('1', '2016-01-01', '1.1.1', '', '200', '0', '0'),
('2', '2016-02-01', '1.1.1', '', '345', '0', '0'),
('3', '2016-03-01', '1.1.1', '', '20', '0', '0'),
('4', '2016-04-01', '1.1.1', '', '74', '0', '0'),
('5', '2016-05-01', '1.1.1', '', '200', '0', '0'),
('6', '2016-06-01', '1.1.1', '', '50', '0', '0'),
('7', '2016-07-01', '1.1.1', '', '45', '0', '0'),
('8', '2016-08-01', '1.1.1', '', '56', '0', '0'),
('9', '2016-09-01', '1.1.1', '', '324', '0', '0'),
('10', '2016-10-01', '1.1.1', '', '500', '0', '0'),
('11', '2016-11-01', '1.1.1', '', '34', '0', '0'),
('12', '2016-12-01', '1.1.1', '', '56', '0', '0');

### Structure of table `fl94_chart_class` ###

DROP TABLE IF EXISTS `fl94_chart_class`;

CREATE TABLE `fl94_chart_class` (
  `cid` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `class_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ctype` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_chart_class` ###

INSERT INTO `fl94_chart_class` VALUES
('1', 'Active', '1', '0'),
('2', 'Passive', '2', '0'),
('3', 'Revenue', '4', '0'),
('4', 'Cost', '6', '0');

### Structure of table `fl94_chart_master` ###

DROP TABLE IF EXISTS `fl94_chart_master`;

CREATE TABLE `fl94_chart_master` (
  `account_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_code2` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_code`),
  KEY `account_name` (`account_name`),
  KEY `accounts_by_type` (`account_type`,`account_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_chart_master` ###

INSERT INTO `fl94_chart_master` VALUES
('1.1.1', '', 'Savings account', '1.1', '0'),
('1.1.2', '', 'Cash account', '1.1', '0'),
('2.2.1.0', '', 'General Suppliers', '2.2.1', '0'),
('2.2.1.1', '', 'Adsoul', '2.2.1', '0'),
('2.2.1.2', '', 'Beefeater Ltd.', '2.2.1', '0'),
('2.2.1.3', '', 'Dino Saurius Inc.', '2.2.1', '0'),
('2.2.1.4', '', 'QUARKCORE,UNIPESSOAL,LDA', '2.2.1', '0'),
('2.2.1.5', '', 'Worten-Equipamentos Para Lar,S.A', '2.2.1', '0'),
('2.4.3.1', '', 'VAT - Supported', '2.4.3', '0'),
('2.4.3.2', '', 'VAT - deductible', '2.4.3', '0'),
('2.4.3.3', '', 'VAT - liquidated', '2.4.3', '0'),
('2.4.3.4', '', 'VAT - adjustments', '2.4.3', '0'),
('2.4.3.5', '', 'VAT - clearance', '2.4.3', '0'),
('2.4.3.6', '', 'VAT - To pay', '2.4.3', '0'),
('2.4.3.7', '', 'VAT - Recovering', '2.4.3', '0'),
('2.4.3.8', '', 'VAT - reimbursements applications', '2.4.3', '0'),
('2.4.3.9', '', 'VAT - officious liquidations', '2.4.3', '0'),
('3.1.1.1', '', 'Inventory Account', '3.1.1', '0'),
('3.1.8', '', 'discounts and rebates on purchases', '3.1', '0'),
('3.4.1', '', 'intermediate product', '3.4', '0'),
('5.6.1', '', 'Transited results', '5.6', '0'),
('6.1.1.1', '', 'Account Cost Merc. sold', '6.1.1', '0'),
('6.2.2.1', '', 'specialized services - Outsourcing', '6.2.2', '0'),
('6.2.2.2', '', 'specialized services - In House', '6.2.2', '0'),
('6.2.5.3', '', 'Transportation of goods', '6.2.5', '0'),
('6.4.3.1', '', 'Adjustments Account', '6.4.3', '0'),
('6.8.1.1', '', 'direct taxes', '6.8.1', '0'),
('6.8.2.1', '', 'Cash discounts granted', '6.8.2', '0'),
('6.8.6.1', '', 'Cover losses', '6.8.6', '0'),
('6.9.2.1', '', 'Foreign exchange losses', '6.9.2', '0'),
('7.1.1.1', '', 'Customer sales', '7.1.1', '0'),
('7.1.8.1', '', 'Discounts and rebates on sales', '7.1', '0'),
('7.8.6.1', '', 'Foreign exchange gains', '7.8.6', '0');

### Structure of table `fl94_chart_types` ###

DROP TABLE IF EXISTS `fl94_chart_types`;

CREATE TABLE `fl94_chart_types` (
  `id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `class_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_id` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_chart_types` ###

INSERT INTO `fl94_chart_types` VALUES
('1', 'FINANCIAL MEDIA NET', '1', '', '0'),
('1.1', 'Cash', '1', '1', '0'),
('1.2', 'Current accounts', '1', '1', '0'),
('1.3', 'Other bank deposits', '1', '1', '0'),
('1.4', 'other financial instruments', '1', '1', '0'),
('1.4.1', 'derivatives', '1', '1.4', '0'),
('1.4.1.1', 'favorable Potentially', '1', '1.4.1', '0'),
('1.4.1.2', 'potentially unfavorable', '1', '1.4.1', '0'),
('1.4.2', 'Financial instruments held for trading ', '1', '1.4', '0'),
('1.4.2.1', 'financial assets', '1', '1.4.2', '0'),
('1.4.2.2', 'Financial liabilities', '1', '1.4.2', '0'),
('1.4.3', 'Other financial assets and liabilities fair value', '1', '1.4.1', '0'),
('1.4.3.1', 'Other financial assets', '1', '1.4.3', '0'),
('1.4.3.2', 'Other financial liabilities', '1', '1.4.3', '0'),
('10', 'Cost of Goods Sold', '4', '', '0'),
('11', 'Payroll Expenses', '4', '', '0'),
('12', 'General & amp; Administrative expenses', '4', '', '0'),
('2', 'ACCOUNTS RECEIVABLE AND PAYABLE', '1', '', '0'),
('2.1', 'Customer', '1', '2', '0'),
('2.1.1', 'Customer c/c', '1', '2.1', '0'),
('2.1.2', 'Customers - receivables', '1', '2.1', '0'),
('2.1.5', 'Customer - non-current', '1', '2.1', '0'),
('2.1.7', 'Doubtful debts', '1', '2.1', '0'),
('2.1.8', 'Advances from customers', '1', '2.1', '0'),
('2.1.9', 'Accumulated impairment losses', '1', '2.1', '0'),
('2.2', 'Suppliers', '1', '2', '0'),
('2.2.1', 'Suppliers c/c', '1', '2.2', '0'),
('2.2.2', 'Suppliers - notes payable', '1', '2.2', '0'),
('2.2.5', 'Invoices in reception and conference', '1', '2.2', '0'),
('2.2.8', 'Advances to suppliers', '1', '2.2', '0'),
('2.2.9', 'Accumulated impairment losses', '1', '2.2', '0'),
('2.3', 'Personal', '1', '2', '0'),
('2.3.1', 'Remuneration payable', '1', '2.3', '0'),
('2.3.2', 'Advances', '1', '2.3', '0'),
('2.3.7', 'Collateral', '1', '2.3', '0'),
('2.3.8', 'Other operations', '1', '2.3', '0'),
('2.3.9', 'Accumulated impairment losse', '1', '2.3', '0'),
('2.4', 'State and other public entities', '1', '2', '0'),
('2.4.1', 'Income taxes', '1', '2.4', '0'),
('2.4.2', 'Withholding taxes on income', '1', '2.4', '0'),
('2.4.3', 'Tax VAT', '1', '2.4', '0'),
('2.4.4', 'Other taxes', '1', '2.4', '0'),
('2.4.5', 'contributions to social security', '1', '2.4', '0'),
('2.4.6', 'Taxes of local authorities', '1', '2.4', '0'),
('2.4.8', 'Other taxes', '1', '2.4', '0'),
('2.4.9', 'State and other public entities agreements - non-current', '1', '2.4', '0'),
('2.5', 'financing obtained', '1', '2', '0'),
('2.5.1', 'credit institutions and financial companies', '1', '2.5', '0'),
('2.5.2', 'Securities market', '1', '2.5', '0'),
('2.5.3', 'capital Participants', '1', '2.5', '0'),
('2.5.4', 'subsidiaries associates and joint ventures', '1', '2.5', '0'),
('2.5.8', 'Other donors', '1', '2.5', '0'),
('2.6', 'Shareholders / partners', '1', '2', '0'),
('2.6.1', 'Shareholders c / subscription', '1', '2.6', '0'),
('2.6.2', 'not released Quotas', '1', '2.6', '0'),
('2.6.3', 'Advances on earnings', '1', '2.6', '0'),
('2.6.4', 'attributed results', '1', '2.6', '0'),
('2.6.5', 'Profit available', '1', '2.6', '0'),
('2.6.6', 'Loans - company - mother', '1', '2.6', '0'),
('2.6.8', 'Other operations', '1', '2.6', '0'),
('2.6.9', 'Accumulated impairment losses', '1', '2.6', '0'),
('2.7', 'Other accounts receivable and payable', '1', '2', '0'),
('2.7.1', 'investment Suppliers', '1', '2.7', '0'),
('2.7.2', 'Debtors and creditors additions', '1', '2.7', '0'),
('2.7.3', 'post-employment benefits', '1', '2.7', '0'),
('2.7.4', 'Deferred tax', '1', '2.7', '0'),
('2.7.5', 'Creditors for uncalled subscriptions', '1', '2.7', '0'),
('2.7.6', 'Advances on account of sales', '1', '2.7', '0'),
('2.7.8', 'Other debtors and creditors', '1', '2.7', '0'),
('2.7.9', 'Accumulated impairment losses', '1', '2.7', '0'),
('2.8', 'deferrals', '1', '2', '0'),
('2.8.1', 'Spending to recognize', '1', '2.8', '0'),
('2.8.2', 'Income to recognize', '1', '2.8', '0'),
('2.9', 'Provisions', '1', '2', '0'),
('2.9.1', 'Taxes', '1', '2.9', '0'),
('2.9.2', 'Guarantees to customers', '1', '2.9', '0'),
('2.9.3', 'Litigation', '1', '2.9', '0'),
('2.9.4', 'Accidents at work and occupational diseases', '1', '2.9', '0'),
('2.9.5', 'Environmental Matters', '1', '2.9', '0'),
('2.9.6', 'Onerous contracts', '1', '2.9', '0'),
('2.9.7', 'Restructuring', '1', '2.9', '0'),
('2.9.8', 'Other provisions', '1', '2.9', '0'),
('3', 'INVENTORIES AND BIOLOGICAL ASSETS', '1', '', '0'),
('3.1', 'Shopping', '1', '3', '0'),
('3.1.1', 'Goods', '1', '3.1', '0'),
('3.1.2', 'Raw materials and consumables', '1', '3.1', '0'),
('3.4', 'finished and intermediate products', '1', '3', '0'),
('4', 'Investments', '2', '', '0'),
('4.1', 'Investments', '1', '4', '0'),
('4.1.1', 'Investments in subsidiaries', '1', '4.1', '0'),
('4.1.2', 'Investments in associates', '1', '4.1', '0'),
('4.1.3', 'entities Investments in jointly controlad', '1', '4.1', '0'),
('4.1.4', 'Investments in other companies', '1', '4.1', '0'),
('4.1.5', 'Other financial investments', '1', '4.1', '0'),
('4.1.9', 'Accumulated impairment losses', '1', '4.1', '0'),
('4.2', 'Investment property', '1', '4', '0'),
('4.2.1', 'Land and natural resources', '1', '4.2', '0'),
('4.2.2', 'Buildings and other constructions', '1', '4.2', '0'),
('4.2.6', 'Other property investment', '1', '4.2', '0'),
('4.2.9', 'Accumulated impairment losses', '1', '4.2', '0'),
('4.3', 'tangible fixed assets', '1', '4', '0'),
('4.3.1', 'Land and natural resources', '1', '4.3', '0'),
('4.3.2', 'Buildings and other constructions', '1', '4.3', '0'),
('4.3.3', 'basic equipment', '1', '4.3', '0'),
('4.3.4', 'transporting equipment', '1', '4.3', '0'),
('4.3.5', 'Office equipment', '1', '4.3', '0'),
('4.3.6', 'Biological equipment', '1', '4.3', '0'),
('4.3.7', 'Other tangible fixed assets', '1', '4.3', '0'),
('4.3.8', 'accumulated depreciation', '1', '4.3', '0'),
('4.3.9', 'Accumulated impairment losses', '1', '4.3', '0'),
('4.4', 'Intangible assets', '1', '4', '0'),
('4.4.1', 'Goodwill', '1', '4.4', '0'),
('4.4.2', 'development projects', '1', '4.4', '0'),
('4.4.3', 'Computer Programs ', '1', '4.4', '0'),
('4.4.4', 'industrial property', '1', '4.4', '0'),
('4.4.6', 'Other intangible assets', '1', '4.4', '0'),
('4.4.8', 'Accumulated depreciation', '1', '4.4', '0'),
('4.4.9', 'Accumulated impairment losses', '1', '4.4', '0'),
('4.5', 'Investments in progress', '1', '4', '0'),
('4.5.1', 'Investments in progress', '1', '4.5', '0'),
('4.5.2', 'ongoing investment properties', '1', '4.5', '0'),
('4.5.3', 'tangible fixed assets in progress', '1', '4.5', '0'),
('4.5.4', 'intangible assets in progresso', '1', '4.5', '0'),
('4.5.5', 'Advances on investment account', '1', '4.5', '0'),
('4.5.9', 'Accumulated impairment losses', '1', '4.5', '0'),
('4.6', 'Non-current assets held for sale', '1', '4', '0'),
('4.6.1', 'Non-current assets held for sale', '1', '4.6', '0'),
('4.6.9', 'Accumulated impairment losses', '1', '4.6', '0'),
('5', 'CAPITAL RESERVES AND RETAINED EARNINGS', '2', '', '0'),
('5.1', 'Capital', '1', '5', '0'),
('5.2', 'shares shares own', '1', '5', '0'),
('5.2.1', 'nominal value', '1', '5.2', '0'),
('5.2.2', 'discounts and premiums', '1', '5.2', '0'),
('5.3', 'Other equity instruments', '1', '5', '0'),
('5.4', 'premium account', '1', '5', '0'),
('5.5', 'reservation', '1', '5', '0'),
('5.5.1', 'Legal reserves', '1', '5.5', '0'),
('5.5.2', 'Other reserves', '1', '5.5', '0'),
('5.6', 'Retained earnings', '1', '5', '0'),
('5.7', 'Adjustments in financial assets', '1', '5', '0'),
('5.7.1', 'related to the method of patrimon equivalence', '1', '5.7', '0'),
('5.7.9', 'Other', '1', '5.7', '0'),
('5.8', 'surplus of revaluation Tangi fixed assets', '1', '5', '0'),
('5.8.1', 'Revaluations arising from legislation', '1', '5.8', '0'),
('5.8.9', 'surplus Other', '1', '5.8', '0'),
('5.9', 'Other changes in equity', '1', '5', '0'),
('5.9.1', 'Translation differences of Funny Financial Statements', '1', '5.9', '0'),
('5.9.2', 'Adjustments for deferred taxes', '1', '5.9', '0'),
('5.9.3', 'Grants', '1', '5.9', '0'),
('5.9.4', 'Grants', '1', '5.9', '0'),
('5.9.9', 'Other', '1', '5.9', '0'),
('6', 'COST', '2', '', '0'),
('6.1', 'Cost of goods sold and materials consumed', '1', '6', '0'),
('6.1.1', 'Goods', '1', '6.1', '0'),
('6.1.2', 'Raw materials and consumables', '1', '6.1', '0'),
('6.1.3', 'Biological assets purchases', '1', '6.1', '0'),
('6.2', 'External supplies and services', '1', '6', '0'),
('6.2.1', 'Subcontract', '1', '6.2', '0'),
('6.2.2', 'specialized services', '1', '6.2', '0'),
('6.2.3', 'Materials', '1', '6.2', '0'),
('6.2.4', 'energy and fluids', '1', '6.2', '0'),
('6.2.5', 'Travel stays and transport', '1', '6.2', '0'),
('6.2.6', 'Other services', '1', '6.2', '0'),
('6.3', 'Expenses on staff', '1', '6', '0'),
('6.3.1', 'Remuneration of corporate bodies', '1', '6.3', '0'),
('6.3.2', 'Remuneration of staff', '1', '6.3', '0'),
('6.3.3', 'post-employment benefits', '1', '6.3', '0'),
('6.3.4', 'Indemnity', '1', '6.3', '0'),
('6.3.5', 'charges on remuneration', '1', '6.3', '0'),
('6.3.6', 'Accident Insurance at work and occupational diseases', '1', '6.3', '0'),
('6.3.7', 'social welfare expenses', '1', '6.3', '0'),
('6.3.8', 'Other staff costs', '1', '6.3', '0'),
('6.4', 'Expenses Depreciation and amortization', '1', '6', '0'),
('6.4.1', 'Investment property', '1', '6.4', '0'),
('6.4.2', 'tangible fixed assets', '1', '6.4', '0'),
('6.4.3', 'Intangible Assets', '1', '6.4', '0'),
('6.4.4', 'Depreciation - Biological assets - at cost', '1', '6.4', '0'),
('6.5', 'Impairment', '1', '6', '0'),
('6.5.1', 'In receivables', '1', '6.5', '0'),
('6.5.2', 'in inventories', '1', '6.5', '0'),
('6.5.3', 'In financial investments', '1', '6.5', '0'),
('6.5.4', 'in investment properties', '1', '6.5', '0'),
('6.5.5', 'In tangible fixed assets', '1', '6.5', '0'),
('6.5.6', 'In intangible assets', '1', '6.5', '0'),
('6.5.7', 'In ongoing investments', '1', '6.5', '0'),
('6.5.8', 'On non-current assets held for sale', '1', '6.5', '0'),
('6.5.9', 'In biological assets - the cost', '1', '6.5', '0'),
('6.6', 'losses from fair value reductions', '1', '6', '0'),
('6.6.1', 'In financial instruments', '1', '6.6', '0'),
('6.6.2', 'In financial instruments', '1', '6.6', '0'),
('6.6.3', 'in investment properties', '1', '6.6', '0'),
('6.6.4', 'In biological assets', '1', '6.6', '0'),
('6.7', 'period Provisions', '1', '6', '0'),
('6.7.1', 'Taxes', '1', '6.7', '0'),
('6.7.2', 'Guarantees to customers', '1', '6.7', '0'),
('6.7.3', 'Litigation', '1', '6.7', '0'),
('6.7.4', 'Accidents at work and occupational diseases', '1', '6.7', '0'),
('6.7.5', 'Environmental Matters', '1', '6.7', '0'),
('6.7.6', 'Onerous contracts', '1', '6.7', '0'),
('6.7.7', 'Restructuring', '1', '6.7', '0'),
('6.7.8', 'Other provisions', '1', '6.7', '0'),
('6.8', 'Other expenses and losses', '1', '6', '0'),
('6.8.1', 'Taxes', '1', '6.8', '0'),
('6.8.2', 'Discounts for prompt payment granted', '1', '6.8', '0'),
('6.8.3', 'bad debts', '1', '6.8', '0'),
('6.8.4', 'losses in inventories', '1', '6.8', '0'),
('6.8.5', 'expenses and losses in subsidiaries associates and entrepreneurship', '1', '6.8', '0'),
('6.8.6', 'expenses and losses in other investments', '1', '6.8', '0'),
('6.8.7', 'expenses and losses on non-financial investments', '1', '6.8', '0'),
('6.8.8', 'Other', '1', '6.8', '0'),
('6.9', 'expenses and loss of funding', '1', '6.9', '0'),
('6.9.1', 'Interest expense ', '1', '6.9', '0'),
('6.9.2', 'Differences unfavorable exchange', '1', '6.9', '0'),
('6.9.8', 'Other expenses and losses of financing', '1', '6.9', '0'),
('7', 'SALES', '2', '', '0'),
('7.1', 'Sales', '2', '7', '0'),
('7.1.1', 'Goods', '2', '7.1', '0'),
('7.1.2', 'finished and intermediate products', '2', '7.1', '0'),
('7.1.3', 'By-products waste and scrap', '2', '7.1', '0'),
('7.1.4', 'biological assets', '2', '7.1', '0'),
('7.1.7', 'Sales Returns', '2', '7.1', '0'),
('7.1.8', 'Descontos e abatimentos em vendas', '2', '7.1', '0'),
('7.2', 'Services rendered', '2', '7', '0'),
('7.2.1', 'Services rendered', '2', '7.2', '0'),
('7.2.5', 'secondary services', '2', '7.2', '0'),
('7.2.8', 'discounts and rebates', '2', '7.2', '0'),
('7.4', 'work for the entity itself', '2', '7', '0'),
('7.4.1', 'tangible fixed assets', '2', '7.4', '0'),
('7.4.2', 'Intangible Assets', '2', '7.4', '0'),
('7.4.3', 'Investment property', '2', '7.4', '0'),
('7.4.4', 'Assets Deferred expenses', '2', '7.4', '0'),
('7.5', 'Operating subsidies', '2', '7', '0'),
('7.5.1', 'State subsidies and other public entities', '2', '7.5', '0'),
('7.5.2', 'Grants from other entities', '2', '7.5', '0'),
('7.6', 'Reversals', '2', '7', '0'),
('7.6.1', 'depreciation and amortization', '2', '7.6', '0'),
('7.6.2', 'impairment losses', '2', '7.6', '0'),
('7.6.3', 'provisions', '2', '7.6', '0'),
('7.7', 'Earnings per fair value increases', '2', '7', '0'),
('7.7.1', 'In financial investments', '2', '7.7', '0'),
('7.7.2', 'In financial investments', '2', '7.7', '0'),
('7.7.3', 'in investment properties', '2', '7.7', '0'),
('7.7.4', 'In biological assets', '2', '7.7', '0'),
('7.8', 'Other operating income', '2', '7', '0'),
('7.8.1', 'additional income', '2', '7.8', '0'),
('7.8.2', 'Cash discounts obtained', '2', '7.8', '0'),
('7.8.3', 'Recovery of debt receivables', '2', '7.8', '0'),
('7.8.4', 'Gains in inventories', '2', '7.8', '0'),
('7.8.5', 'Income and earnings in subsidiaries associates and undertook', '2', '7.8', '0'),
('7.8.6', 'Income and gains on other financial assets', '2', '7.8', '0'),
('7.8.7', 'Income and earnings in non-financial investments', '2', '7.8', '0'),
('7.8.8', 'Other', '2', '7.8', '0'),
('7.9', 'Interest dividends and other similar income', '2', '7', '0'),
('7.9.1', 'Interest income', '2', '7.9', '0'),
('7.9.2', 'Dividend income', '2', '7.9', '0'),
('7.9.3', 'Foreign exchange gains', '2', '7.9', '0'),
('7.9.8', 'Other similar income', '2', '7.9', '0'),
('8', 'Results', '3', '', '0'),
('8.1', 'net profit for the period', '1', '8', '0'),
('8.1.2', 'Income tax period', '1', '8.1', '0'),
('8.1.2.1', 'estimated tax for the period', '1', '8.1.2', '0'),
('8.1.2.2', 'Deferred tax', '1', '8.1.2', '0'),
('8.9', 'Interim dividends', '1', '8', '0'),
('9', 'Other Revenue', '3', '', '0');


### Structure of table `fl94_comments` ###

DROP TABLE IF EXISTS `fl94_comments`;

CREATE TABLE `fl94_comments` (
  `type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `date_` date DEFAULT '0000-00-00',
  `memo_` tinytext COLLATE utf8_unicode_ci,
  KEY `type_and_id` (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_comments` ###

INSERT INTO `fl94_comments` VALUES
('12', '1', '2015-05-10', 'Cash invoice 1'),
('12', '2', '2015-05-07', 'Cash invoice 2'),
('13', '4', '2015-05-07', 'Recurrent Invoice covers period 04/01/2015 - 04/07/2015.'),
('10', '4', '2015-05-07', 'Recurrent Invoice covers period 04/01/2015 - 04/07/2015.'),
('12', '3', '2015-05-07', 'Cash invoice 4'),
('0', '1', '2015-12-31', 'Year close');

### Structure of table `fl94_credit_status` ###

DROP TABLE IF EXISTS `fl94_credit_status`;

CREATE TABLE `fl94_credit_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason_description` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dissallow_invoices` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `reason_description` (`reason_description`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_credit_status` ###

INSERT INTO `fl94_credit_status` VALUES
('1', 'Good history', '0', '0'),
('3', 'No more action', '1', '0'),
('4', 'in settlemento', '1', '0');

### Structure of table `fl94_crm_categories` ###

DROP TABLE IF EXISTS `fl94_crm_categories`;

CREATE TABLE `fl94_crm_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pure technical key',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'contact type e.g. customer',
  `action` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'detailed usage e.g. department',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'for category selector',
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'usage description',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'nonzero for core system usage',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`action`),
  UNIQUE KEY `type_2` (`type`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_crm_categories` ###

INSERT INTO `fl94_crm_categories` VALUES
('1', 'cust_branch', 'general', 'General', 'General contact data for customer branch (overrides company setting)', '1', '0'),
('2', 'cust_branch', 'invoice', 'Invoices', 'Invoice posting (overrides company setting)', '1', '0'),
('3', 'cust_branch', 'order', 'Orders', 'Order confirmation (overrides company setting)', '1', '0'),
('4', 'cust_branch', 'delivery', 'Deliveries', 'Delivery coordination (overrides company setting)', '1', '0'),
('5', 'customer', 'general', 'General', 'General contact data for customer', '1', '0'),
('6', 'customer', 'order', 'Orders', 'Order confirmation', '1', '0'),
('7', 'customer', 'delivery', 'Deliveries', 'Delivery coordination', '1', '0'),
('8', 'customer', 'invoice', 'Invoices', 'Invoice posting', '1', '0'),
('9', 'supplier', 'general', 'General', 'General contact data for supplier', '1', '0'),
('10', 'supplier', 'order', 'Orders', 'Order confirmation', '1', '0'),
('11', 'supplier', 'delivery', 'Deliveries', 'Delivery coordination', '1', '0'),
('12', 'supplier', 'invoice', 'Invoices', 'Invoice posting', '1', '0');

### Structure of table `fl94_crm_contacts` ###

DROP TABLE IF EXISTS `fl94_crm_contacts`;

CREATE TABLE `fl94_crm_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL DEFAULT '0' COMMENT 'foreign key to crm_contacts',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'foreign key to crm_categories',
  `action` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'foreign key to crm_categories',
  `entity_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'entity id in related class table',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`action`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_crm_contacts` ###

INSERT INTO `fl94_crm_contacts` VALUES
('4', '2', 'supplier', 'general', '2'),
('5', '3', 'cust_branch', 'general', '1'),
('7', '3', 'customer', 'general', '1'),
('8', '1', 'supplier', 'general', '1'),
('9', '4', 'cust_branch', 'general', '2'),
('10', '4', 'customer', 'general', '2'),
('11', '5', 'cust_branch', 'general', '3'),
('12', '5', 'customer', 'general', '3'),
('13', '6', 'cust_branch', 'general', '4'),
('14', '6', 'customer', 'general', '4'),
('15', '7', 'supplier', 'general', '3'),
('16', '8', 'supplier', 'general', '4'),
('17', '9', 'supplier', 'general', '5');

### Structure of table `fl94_crm_persons` ###

DROP TABLE IF EXISTS `fl94_crm_persons`;

CREATE TABLE `fl94_crm_persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name2` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` tinytext COLLATE utf8_unicode_ci,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ref` (`ref`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_crm_persons` ###

INSERT INTO `fl94_crm_persons` VALUES
('1', 'Dino Saurius', 'John Doe', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, '', '0'),
('2', 'Beefeater', 'Joe Oversea', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, '', '0'),
('3', 'Donald Easter', 'Donald Easter LLC', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, '', '0'),
('4', 'MoneyMaker', 'MoneyMaker Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('5', 'DSTV', 'DSTVmedia', NULL, 'Isolo, 29 Ire Akari Estate Rd, Nigeria', '924289525', NULL, NULL, NULL, NULL, '', '0'),
('6', 'Lanwood ', 'Lanwood Servicos,Lda', NULL, 'Alameda Fernao Lopes 12-2A1 1495-190 Alges, Portugal', NULL, NULL, NULL, NULL, NULL, '', '0'),
('7', 'Adsoul', '', NULL, 'Rua Soeiro Pereira Gomes Lote 1, 3C 1600-870 Lisboa Portugal', NULL, NULL, NULL, NULL, NULL, '', '0'),
('8', 'QUARKCORE', '', NULL, 'Almeida Garret 5,2 2625-272 Portugal', NULL, NULL, NULL, NULL, NULL, '', '0'),
('9', 'Worten', '', NULL, 'Rua Joao  Mendonca, 4480-089 Vila do Conde Portugal', NULL, NULL, NULL, NULL, NULL, '', '0');

### Structure of table `fl94_currencies` ###

DROP TABLE IF EXISTS `fl94_currencies`;

CREATE TABLE `fl94_currencies` (
  `currency` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_abrev` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_symbol` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hundreds_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `auto_update` tinyint(1) NOT NULL DEFAULT '1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`curr_abrev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_currencies` ###

INSERT INTO `fl94_currencies` VALUES
('Euro', 'EUR', 'EUR', 'Europe', 'Cents', '1', '0'),
('Pounds', 'GBP', 'GBP', 'England', 'Pence', '1', '0'),
('US Dollars', 'USD', 'USD', 'United States', 'Cents', '1', '0');

### Structure of table `fl94_cust_allocations` ###

DROP TABLE IF EXISTS `fl94_cust_allocations`;

CREATE TABLE `fl94_cust_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `amt` double unsigned DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int(11) DEFAULT NULL,
  `trans_type_from` int(11) DEFAULT NULL,
  `trans_no_to` int(11) DEFAULT NULL,
  `trans_type_to` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trans_type_from` (`person_id`,`trans_type_from`,`trans_no_from`,`trans_type_to`,`trans_no_to`),
  KEY `From` (`trans_type_from`,`trans_no_from`),
  KEY `To` (`trans_type_to`,`trans_no_to`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_cust_allocations` ###

INSERT INTO `fl94_cust_allocations` VALUES
('1', '1', '6240', '2015-05-10', '1', '12', '1', '10'),
('2', '1', '300', '2015-05-07', '2', '12', '2', '10'),
('3', '1', '0', '2015-05-07', '3', '12', '4', '10');

### Structure of table `fl94_cust_branch` ###

DROP TABLE IF EXISTS `fl94_cust_branch`;

CREATE TABLE `fl94_cust_branch` (
  `branch_code` int(11) NOT NULL AUTO_INCREMENT,
  `debtor_no` int(11) NOT NULL DEFAULT '0',
  `br_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `branch_ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `br_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `area` int(11) DEFAULT NULL,
  `salesman` int(11) NOT NULL DEFAULT '0',
  `default_location` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_group_id` int(11) DEFAULT NULL,
  `sales_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_discount_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `receivables_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `default_ship_via` int(11) NOT NULL DEFAULT '1',
  `br_post_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `group_no` int(11) NOT NULL DEFAULT '0',
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `bank_account` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`branch_code`,`debtor_no`),
  KEY `branch_ref` (`branch_ref`),
  KEY `group_no` (`group_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_cust_branch` ###

INSERT INTO `fl94_cust_branch` VALUES
('1', '1', 'Donald Easter LLC', 'Donald Easter', 'N/A', '1', '1', 'DEF', '1', '', '7.1.8.1', '6.2.1.1', '6.8.2.1', '1', 'N/A', '0', '', NULL, '0'),
('2', '2', 'MoneyMaker Ltd.', 'MoneyMaker', '', '1', '1', 'DEF', '2', '', '7.1.8.1', '6.2.1.1', '6.8.2.1', '1', '', '0', '', NULL, '0'),
('3', '3', 'DSTVmedia', 'DSTV', 'Isolo, 29 Ire Akari Estate Rd, Nigeria', '1', '1', 'DEF', '1', '', '7.1.8.1', '6.2.1.1', '6.8.2.1', '2', 'Isolo, 29 Ire Akari Estate Rd, Nigeria', '0', '', NULL, '0'),
('4', '4', 'Lanwood Servicos,Lda', 'Lanwood ', 'Alameda Fernao Lopes 12-2A1 1495-190 Alges, Portugal', '1', '1', 'DEF', '1', '', '7.1.8.1', '6.2.1.1', '6.8.2.1', '2', 'Alameda Fernao Lopes 12-2A1 1495-190 Alges, Portugal', '0', '', NULL, '0');

### Structure of table `fl94_debtor_trans` ###

DROP TABLE IF EXISTS `fl94_debtor_trans`;

CREATE TABLE `fl94_debtor_trans` (
  `trans_no` int(11) unsigned NOT NULL DEFAULT '0',
  `type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `version` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `debtor_no` int(11) unsigned DEFAULT NULL,
  `branch_code` int(11) NOT NULL DEFAULT '-1',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tpe` int(11) NOT NULL DEFAULT '0',
  `order_` int(11) NOT NULL DEFAULT '0',
  `ov_amount` double NOT NULL DEFAULT '0',
  `ov_gst` double NOT NULL DEFAULT '0',
  `ov_freight` double NOT NULL DEFAULT '0',
  `ov_freight_tax` double NOT NULL DEFAULT '0',
  `ov_discount` double NOT NULL DEFAULT '0',
  `alloc` double NOT NULL DEFAULT '0',
  `prep_amount` double NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1',
  `ship_via` int(11) DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `payment_terms` int(11) DEFAULT NULL,
  `tax_included` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`,`trans_no`),
  KEY `debtor_no` (`debtor_no`,`branch_code`),
  KEY `tran_date` (`tran_date`),
  KEY `order_` (`order_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_debtor_trans` ###

INSERT INTO `fl94_debtor_trans` VALUES
('1', '10', '0', '1', '1', '2015-05-10', '2015-05-05', '001/2015', '1', '1', '6240', '0', '0', '0', '0', '6240', '0', '1', '1', '0', '0', '4', '1'),
('2', '10', '0', '1', '1', '2015-05-07', '2015-05-07', '002/2015', '1', '2', '300', '0', '0', '0', '0', '300', '0', '1', '1', '0', '0', '4', '1'),
('3', '10', '0', '2', '2', '2015-05-07', '2015-06-17', '003/2015', '1', '5', '267.14', '0', '0', '0', '0', '0', '0', '1.123', '1', '1', '0', '1', '1'),
('4', '10', '0', '1', '1', '2015-05-07', '2015-05-07', '004/2015', '1', '7', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '1'),
('1', '12', '0', '1', '1', '2015-05-10', '0000-00-00', '001/2015', '0', '0', '6240', '0', '0', '0', '0', '6240', '0', '1', '0', '0', '0', NULL, '0'),
('2', '12', '0', '1', '1', '2015-05-07', '0000-00-00', '002/2015', '0', '0', '300', '0', '0', '0', '0', '300', '0', '1', '0', '0', '0', NULL, '0'),
('3', '12', '0', '1', '1', '2015-05-07', '0000-00-00', '003/2015', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL, '0'),
('1', '13', '1', '1', '1', '2015-05-10', '2015-05-05', 'auto', '1', '1', '6240', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '1'),
('2', '13', '1', '1', '1', '2015-05-07', '2015-05-07', 'auto', '1', '2', '300', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '1'),
('3', '13', '1', '2', '2', '2015-05-07', '2015-06-17', 'auto', '1', '5', '267.14', '0', '0', '0', '0', '0', '0', '1.123', '1', '1', '0', '1', '1'),
('4', '13', '1', '1', '1', '2015-05-07', '2015-05-07', 'auto', '1', '7', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4', '1');

### Structure of table `fl94_debtor_trans_details` ###

DROP TABLE IF EXISTS `fl94_debtor_trans_details`;

CREATE TABLE `fl94_debtor_trans_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debtor_trans_no` int(11) DEFAULT NULL,
  `debtor_trans_type` int(11) DEFAULT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci,
  `unit_price` double NOT NULL DEFAULT '0',
  `unit_tax` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `discount_percent` double NOT NULL DEFAULT '0',
  `standard_cost` double NOT NULL DEFAULT '0',
  `qty_done` double NOT NULL DEFAULT '0',
  `src_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Transaction` (`debtor_trans_type`,`debtor_trans_no`),
  KEY `src_id` (`src_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_debtor_trans_details` ###

INSERT INTO `fl94_debtor_trans_details` VALUES
('1', '1', '13', '101', 'iPad Air 2 16GB', '300', '14.29', '20', '0', '200', '20', '1'),
('2', '1', '13', '301', 'Support', '80', '3.81', '3', '0', '0', '3', '2'),
('3', '1', '10', '101', 'iPad Air 2 16GB', '300', '14.2855', '20', '0', '200', '0', '1'),
('4', '1', '10', '301', 'Support', '80', '3.81', '3', '0', '0', '0', '2'),
('5', '2', '13', '101', 'iPad Air 2 16GB', '300', '14.29', '1', '0', '200', '1', '3'),
('6', '2', '10', '101', 'iPad Air 2 16GB', '300', '14.29', '1', '0', '200', '0', '5'),
('7', '3', '13', '102', 'iPhone 6 64GB', '222.62', '0', '1', '0', '150', '1', '7'),
('8', '3', '13', '103', 'iPhone Cover Case', '44.52', '0', '1', '0', '10', '1', '8'),
('9', '3', '10', '102', 'iPhone 6 64GB', '222.62', '0', '1', '0', '150', '0', '7'),
('10', '3', '10', '103', 'iPhone Cover Case', '44.52', '0', '1', '0', '10', '0', '8'),
('11', '4', '13', '202', 'Maintenance', '0', '0', '5', '0', '0', '5', '10'),
('12', '4', '10', '202', 'Maintenance', '0', '0', '5', '0', '0', '0', '11');

### Structure of table `fl94_debtors_master` ###

DROP TABLE IF EXISTS `fl94_debtors_master`;

CREATE TABLE `fl94_debtors_master` (
  `debtor_no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `debtor_ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci,
  `tax_id` varchar(55) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_code` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_type` int(11) NOT NULL DEFAULT '1',
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `credit_status` int(11) NOT NULL DEFAULT '0',
  `payment_terms` int(11) DEFAULT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `pymt_discount` double NOT NULL DEFAULT '0',
  `credit_limit` float NOT NULL DEFAULT '1000',
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`debtor_no`),
  UNIQUE KEY `debtor_ref` (`debtor_ref`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_debtors_master` ###

INSERT INTO `fl94_debtors_master` VALUES
('1', 'Donald Easter LLC', 'Donald Easter', 'N/A', '123456789', 'USD', '1', '0', '0', '1', '4', '0', '0', '1000', '', '0'),
('2', 'MoneyMaker Ltd.', 'MoneyMaker', 'N/A', '54354333', 'EUR', '1', '1', '0', '1', '1', '0', '0', '1000', '', '0'),
('3', 'DSTVmedia', 'DSTV', 'Isolo, 29 Ire Akari Estate Rd, Nigeria', '', 'EUR', '1', '0', '0', '1', '3', '0', '0', '1000', '', '0'),
('4', 'Lanwood Servicos,Lda', 'Lanwood ', 'Alameda Fernao Lopes 12-2A1 1495-190 Alges, Portugal', 'PT509275621', 'EUR', '1', '0', '0', '1', '3', '0', '0', '1000', '', '0');

### Structure of table `fl94_dimensions` ###

DROP TABLE IF EXISTS `fl94_dimensions`;

CREATE TABLE `fl94_dimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_` tinyint(1) NOT NULL DEFAULT '1',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference` (`reference`),
  KEY `date_` (`date_`),
  KEY `due_date` (`due_date`),
  KEY `type_` (`type_`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_dimensions` ###

INSERT INTO `fl94_dimensions` VALUES
('1', '001/2015', 'Cost Centre', '1', '0', '2015-05-05', '2015-05-25');

### Structure of table `fl94_exchange_rates` ###

DROP TABLE IF EXISTS `fl94_exchange_rates`;

CREATE TABLE `fl94_exchange_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_code` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate_buy` double NOT NULL DEFAULT '0',
  `rate_sell` double NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `curr_code` (`curr_code`,`date_`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_exchange_rates` ###

INSERT INTO `fl94_exchange_rates` VALUES
('1', 'EUR', '1.123', '1.123', '2015-05-07');

### Structure of table `fl94_fiscal_year` ###

DROP TABLE IF EXISTS `fl94_fiscal_year`;

CREATE TABLE `fl94_fiscal_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT '0000-00-00',
  `end` date DEFAULT '0000-00-00',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `begin` (`begin`),
  UNIQUE KEY `end` (`end`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_fiscal_year` ###

INSERT INTO `fl94_fiscal_year` VALUES
('1', '2015-01-01', '2015-12-31', '1'),
('2', '2016-01-01', '2016-12-31', '0');

### Structure of table `fl94_gl_trans` ###

DROP TABLE IF EXISTS `fl94_gl_trans`;

CREATE TABLE `fl94_gl_trans` (
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `type_no` int(11) NOT NULL DEFAULT '0',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `memo_` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `person_type_id` int(11) DEFAULT NULL,
  `person_id` tinyblob,
  PRIMARY KEY (`counter`),
  KEY `Type_and_Number` (`type`,`type_no`),
  KEY `dimension_id` (`dimension_id`),
  KEY `dimension2_id` (`dimension2_id`),
  KEY `tran_date` (`tran_date`),
  KEY `account_and_tran_date` (`account`,`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_gl_trans` ###

INSERT INTO `fl94_gl_trans` VALUES
('1', '0', '1', '2015-12-31', '5.6.1', 'Year close', '-2163.57', '0', '0', NULL, NULL),
('2', '0', '1', '2015-12-31', '5.6.1', 'Year close', '2163.57', '0', '0', NULL, NULL);

### Structure of table `fl94_grn_batch` ###

DROP TABLE IF EXISTS `fl94_grn_batch`;

CREATE TABLE `fl94_grn_batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `purch_order_no` int(11) DEFAULT NULL,
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `loc_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` double DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `delivery_date` (`delivery_date`),
  KEY `purch_order_no` (`purch_order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_grn_batch` ###

INSERT INTO `fl94_grn_batch` VALUES
('1', '1', '1', '001/2015', '2015-05-05', 'DEF', '1'),
('2', '1', '2', 'auto', '2015-05-05', 'DEF', '1');

### Structure of table `fl94_grn_items` ###

DROP TABLE IF EXISTS `fl94_grn_items`;

CREATE TABLE `fl94_grn_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grn_batch_id` int(11) DEFAULT NULL,
  `po_detail_item` int(11) NOT NULL DEFAULT '0',
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci,
  `qty_recd` double NOT NULL DEFAULT '0',
  `quantity_inv` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `grn_batch_id` (`grn_batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_grn_items` ###

INSERT INTO `fl94_grn_items` VALUES
('1', '1', '1', '101', 'iPad Air 2 16GB', '100', '0'),
('2', '1', '2', '102', 'iPhone 6 64GB', '100', '0'),
('3', '1', '3', '103', 'iPhone Cover Case', '100', '0'),
('4', '2', '4', '101', 'iPad Air 2 16GB', '15', '15');

### Structure of table `fl94_groups` ###

DROP TABLE IF EXISTS `fl94_groups`;

CREATE TABLE `fl94_groups` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_groups` ###

INSERT INTO `fl94_groups` VALUES
('1', 'Small Custommer', '0'),
('2', 'Medium Customer', '0'),
('3', 'Big Custommer', '0');

### Structure of table `fl94_item_codes` ###

DROP TABLE IF EXISTS `fl94_item_codes`;

CREATE TABLE `fl94_item_codes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category_id` smallint(6) unsigned NOT NULL,
  `quantity` double NOT NULL DEFAULT '1',
  `is_foreign` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `stock_id` (`stock_id`,`item_code`),
  KEY `item_code` (`item_code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_item_codes` ###

INSERT INTO `fl94_item_codes` VALUES
('1', '101', '101', 'iPad Air 2 16GB', '1', '1', '0', '0'),
('2', '102', '102', 'iPhone 6 64GB', '1', '1', '0', '0'),
('3', '103', '103', 'iPhone Cover Case', '1', '1', '0', '0'),
('4', '201', '201', 'AP Surf Set', '3', '1', '0', '0'),
('5', '301', '301', 'Support', '4', '1', '0', '0'),
('6', '501', '102', 'iPhone Pack', '1', '1', '0', '0'),
('7', '501', '103', 'iPhone Pack', '1', '1', '0', '0'),
('8', '202', '202', 'Maintenance', '4', '1', '0', '0'),
('9', 'DH1SY0D0102M', 'DH1SY0D0102M', 'Cabinet - SKD LE32M630S', '1', '1', '0', '0'),
('10', 'DH1TB0M0703M', 'DH1TB0M0703M', 'Placa Principal - LE46M660', '1', '1', '0', '0'),
('11', 'DIR-636', 'DIR-636', 'ROUTER DLINK WIFI 300MB', '1', '1', '0', '0');

### Structure of table `fl94_item_tax_type_exemptions` ###

DROP TABLE IF EXISTS `fl94_item_tax_type_exemptions`;

CREATE TABLE `fl94_item_tax_type_exemptions` (
  `item_tax_type_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_tax_type_id`,`tax_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_item_tax_type_exemptions` ###


### Structure of table `fl94_item_tax_types` ###

DROP TABLE IF EXISTS `fl94_item_tax_types`;

CREATE TABLE `fl94_item_tax_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `exempt` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_item_tax_types` ###

INSERT INTO `fl94_item_tax_types` VALUES
('1', 'Regular', '0', '0');

### Structure of table `fl94_item_units` ###

DROP TABLE IF EXISTS `fl94_item_units`;

CREATE TABLE `fl94_item_units` (
  `abbr` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `decimals` tinyint(2) NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`abbr`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_item_units` ###

INSERT INTO `fl94_item_units` VALUES
('each', 'Unit', '0', '0'),
('hr', 'Hours', '0', '0');

### Structure of table `fl94_journal` ###

DROP TABLE IF EXISTS `fl94_journal`;

CREATE TABLE `fl94_journal` (
  `type` smallint(6) NOT NULL DEFAULT '0',
  `trans_no` int(11) NOT NULL DEFAULT '0',
  `tran_date` date DEFAULT '0000-00-00',
  `reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `source_ref` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `event_date` date DEFAULT '0000-00-00',
  `doc_date` date NOT NULL DEFAULT '0000-00-00',
  `currency` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `amount` double NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1',
  PRIMARY KEY (`type`,`trans_no`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_journal` ###

INSERT INTO `fl94_journal` VALUES
('0', '1', '2015-12-31', '001/2012', '', '2015-12-31', '2015-12-31', 'USD', '2163.57', '1');

### Structure of table `fl94_kv_empl_info` ###

DROP TABLE IF EXISTS `fl94_kv_empl_info`;

CREATE TABLE `fl94_kv_empl_info` (
  `empl_id` int(10) NOT NULL AUTO_INCREMENT,
  `empl_name` varchar(100) NOT NULL,
  `pre_address` varchar(100) NOT NULL,
  `per_address` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `age` int(3) NOT NULL,
  `mobile_phone` int(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  `grade` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `gross_salary` int(10) NOT NULL,
  `basic` int(10) NOT NULL,
  `date_of_join` date NOT NULL,
  PRIMARY KEY (`empl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ;

### Data of table `fl94_kv_empl_info` ###

INSERT INTO `fl94_kv_empl_info` VALUES
('1', 'Raul', '', '', '2016-04-02', '0', '1234', 'ranua@iscte.pt', '', '', '', '1000', '800', '2016-04-02');

### Structure of table `fl94_kv_empl_payslip` ###

DROP TABLE IF EXISTS `fl94_kv_empl_payslip`;

CREATE TABLE `fl94_kv_empl_payslip` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `empl_id` int(10) NOT NULL,
  `basic` int(10) NOT NULL,
  `da` int(10) NOT NULL,
  `hra` int(10) NOT NULL,
  `convey_allow` int(10) NOT NULL,
  `edu_other_allow` int(10) NOT NULL,
  `pf` int(10) NOT NULL,
  `lop_amount` int(10) NOT NULL,
  `tds` int(10) NOT NULL,
  `total_ded` int(10) NOT NULL,
  `total_net` int(10) NOT NULL,
  `date_of_pay` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

### Data of table `fl94_kv_empl_payslip` ###

INSERT INTO `fl94_kv_empl_payslip` VALUES
('1', '1', '1', '1', '300', '200', '200', '100', '200', '60', '0', '0', '210', '790', '2016-03-31');

### Structure of table `fl94_loc_stock` ###

DROP TABLE IF EXISTS `fl94_loc_stock`;

CREATE TABLE `fl94_loc_stock` (
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reorder_level` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`loc_code`,`stock_id`),
  KEY `stock_id` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_loc_stock` ###

INSERT INTO `fl94_loc_stock` VALUES
('DEF', '101', '0'),
('DEF', '102', '0'),
('DEF', '103', '0'),
('DEF', '201', '0'),
('DEF', '202', '0'),
('DEF', '301', '0'),
('DEF', 'DH1SY0D0102M', '0'),
('DEF', 'DH1TB0M0703M', '0'),
('DEF', 'DIR-636', '0');

### Structure of table `fl94_locations` ###

DROP TABLE IF EXISTS `fl94_locations`;

CREATE TABLE `fl94_locations` (
  `loc_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `location_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fixed_asset` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`loc_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_locations` ###

INSERT INTO `fl94_locations` VALUES
('DEF', 'Armazem 1 Sector 1 Nivel 1', 'R. Prof. Henrique de Barros Lote 2, Armazem 3, 2685-338 PRIOR VELHO - LISBOA', '21 941 3320', '', '', '', '21 941 3320', '0', '0');

### Structure of table `fl94_movement_types` ###

DROP TABLE IF EXISTS `fl94_movement_types`;

CREATE TABLE `fl94_movement_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

### Data of table `fl94_movement_types` ###

INSERT INTO `fl94_movement_types` VALUES
('1', 'Adjustment', '0');

### Structure of table `fl94_payment_terms` ###

DROP TABLE IF EXISTS `fl94_payment_terms`;

CREATE TABLE `fl94_payment_terms` (
  `terms_indicator` int(11) NOT NULL AUTO_INCREMENT,
  `terms` char(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `days_before_due` smallint(6) NOT NULL DEFAULT '0',
  `day_in_following_month` smallint(6) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`terms_indicator`),
  UNIQUE KEY `terms` (`terms`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_payment_terms` ###

INSERT INTO `fl94_payment_terms` VALUES
('1', 'At 15th day of the month', '0', '17', '0'),
('2', 'End of the month', '0', '30', '0'),
('3', '10 days', '10', '0', '0'),
('4', 'Cash only', '0', '0', '0');

### Structure of table `fl94_prices` ###

DROP TABLE IF EXISTS `fl94_prices`;

CREATE TABLE `fl94_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales_type_id` int(11) NOT NULL DEFAULT '0',
  `curr_abrev` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `price` (`stock_id`,`sales_type_id`,`curr_abrev`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_prices` ###

INSERT INTO `fl94_prices` VALUES
('1', '101', '1', 'USD', '300'),
('2', '102', '1', 'USD', '250'),
('3', '103', '1', 'USD', '50');

### Structure of table `fl94_print_profiles` ###

DROP TABLE IF EXISTS `fl94_print_profiles`;

CREATE TABLE `fl94_print_profiles` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `profile` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `report` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `printer` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile` (`profile`,`report`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_print_profiles` ###

INSERT INTO `fl94_print_profiles` VALUES
('1', 'Out of office', NULL, '0'),
('2', 'Sales Department', NULL, '0'),
('3', 'Central', NULL, '2'),
('4', 'Sales Department', '104', '2'),
('5', 'Sales Department', '105', '2'),
('6', 'Sales Department', '107', '2'),
('7', 'Sales Department', '109', '2'),
('8', 'Sales Department', '110', '2'),
('9', 'Sales Department', '201', '2');

### Structure of table `fl94_printers` ###

DROP TABLE IF EXISTS `fl94_printers`;

CREATE TABLE `fl94_printers` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `queue` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `port` smallint(11) unsigned NOT NULL,
  `timeout` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_printers` ###

INSERT INTO `fl94_printers` VALUES
('1', 'QL500', 'Label printer', 'QL500', 'server', '127', '20'),
('2', 'Samsung', 'Main network printer', 'scx4521F', 'server', '515', '5'),
('3', 'Local', 'Local print server at user IP', 'lp', '', '515', '10');

### Structure of table `fl94_purch_data` ###

DROP TABLE IF EXISTS `fl94_purch_data`;

CREATE TABLE `fl94_purch_data` (
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  `suppliers_uom` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `conversion_factor` double NOT NULL DEFAULT '1',
  `supplier_description` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`supplier_id`,`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_purch_data` ###

INSERT INTO `fl94_purch_data` VALUES
('1', '101', '200', '', '1', 'iPad Air 2 16GB'),
('1', '102', '150', '', '1', 'iPhone 6 64GB'),
('1', '103', '10', '', '1', 'iPhone Cover Case');

### Structure of table `fl94_purch_order_details` ###

DROP TABLE IF EXISTS `fl94_purch_order_details`;

CREATE TABLE `fl94_purch_order_details` (
  `po_detail_item` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL DEFAULT '0',
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci,
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `qty_invoiced` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `act_price` double NOT NULL DEFAULT '0',
  `std_cost_unit` double NOT NULL DEFAULT '0',
  `quantity_ordered` double NOT NULL DEFAULT '0',
  `quantity_received` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`po_detail_item`),
  KEY `order` (`order_no`,`po_detail_item`),
  KEY `itemcode` (`item_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_purch_order_details` ###

INSERT INTO `fl94_purch_order_details` VALUES
('1', '1', '101', 'iPad Air 2 16GB', '2015-05-15', '0', '200', '200', '200', '100', '100'),
('2', '1', '102', 'iPhone 6 64GB', '2015-05-15', '0', '150', '150', '150', '100', '100'),
('3', '1', '103', 'iPhone Cover Case', '2015-05-15', '0', '10', '10', '10', '100', '100'),
('4', '2', '101', 'iPad Air 2 16GB', '2015-05-05', '15', '200', '200', '200', '15', '15');

### Structure of table `fl94_purch_orders` ###

DROP TABLE IF EXISTS `fl94_purch_orders`;

CREATE TABLE `fl94_purch_orders` (
  `order_no` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `comments` tinytext COLLATE utf8_unicode_ci,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `requisition_no` tinytext COLLATE utf8_unicode_ci,
  `into_stock_location` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `prep_amount` double NOT NULL DEFAULT '0',
  `alloc` double NOT NULL DEFAULT '0',
  `tax_included` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_no`),
  KEY `ord_date` (`ord_date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_purch_orders` ###

INSERT INTO `fl94_purch_orders` VALUES
('1', '1', NULL, '2015-05-05', '001/2015', NULL, 'DEF', 'N/A', '37800', '0', '0', '0'),
('2', '1', NULL, '2015-05-05', 'auto', 'rr4', 'DEF', 'N/A', '3150', '0', '0', '0');

### Structure of table `fl94_quick_entries` ###

DROP TABLE IF EXISTS `fl94_quick_entries`;

CREATE TABLE `fl94_quick_entries` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `usage` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_amount` double NOT NULL DEFAULT '0',
  `base_desc` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bal_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_quick_entries` ###

INSERT INTO `fl94_quick_entries` VALUES
('1', '1', 'Maintenance', NULL, '0', 'Amount', '0'),
('3', '2', 'Cash Sales', 'Retail sales without invoice', '0', 'Amount', '0');

### Structure of table `fl94_quick_entry_lines` ###

DROP TABLE IF EXISTS `fl94_quick_entry_lines`;

CREATE TABLE `fl94_quick_entry_lines` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `qid` smallint(6) unsigned NOT NULL,
  `amount` double DEFAULT '0',
  `memo` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `dest_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dimension_id` smallint(6) unsigned DEFAULT NULL,
  `dimension2_id` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_quick_entry_lines` ###

INSERT INTO `fl94_quick_entry_lines` VALUES
('1', '1', '0', '', 't-', '1', '0', '0'),
('3', '3', '0', '', 't-', '1', '0', '0'),
('4', '3', '0', '', '=', '7.1.1.1', '0', '0'),
('5', '1', '0', '', '=', '6.2.2.2', '0', '0');

### Structure of table `fl94_recurrent_invoices` ###

DROP TABLE IF EXISTS `fl94_recurrent_invoices`;

CREATE TABLE `fl94_recurrent_invoices` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `order_no` int(11) unsigned NOT NULL,
  `debtor_no` int(11) unsigned DEFAULT NULL,
  `group_no` smallint(6) unsigned DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT '0',
  `monthly` int(11) NOT NULL DEFAULT '0',
  `begin` date NOT NULL DEFAULT '0000-00-00',
  `end` date NOT NULL DEFAULT '0000-00-00',
  `last_sent` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_recurrent_invoices` ###


### Structure of table `fl94_reflines` ###

DROP TABLE IF EXISTS `fl94_reflines`;

CREATE TABLE `fl94_reflines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_type` int(11) NOT NULL,
  `prefix` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pattern` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `prefix` (`trans_type`,`prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_reflines` ###

INSERT INTO `fl94_reflines` VALUES
('1', '0', '', '{001}/{YYYY}', '', '1', '0'),
('2', '1', '', '{001}/{YYYY}', '', '1', '0'),
('3', '2', '', '{001}/{YYYY}', '', '1', '0'),
('4', '4', '', '{001}/{YYYY}', '', '1', '0'),
('5', '10', '', '{001}/{YYYY}', '', '1', '0'),
('6', '11', '', '{001}/{YYYY}', '', '1', '0'),
('7', '12', '', '{001}/{YYYY}', '', '1', '0'),
('8', '13', '', '{001}/{YYYY}', '', '1', '0'),
('9', '16', '', '{001}/{YYYY}', '', '1', '0'),
('10', '17', '', '{001}/{YYYY}', '', '1', '0'),
('11', '18', '', '{001}/{YYYY}', '', '1', '0'),
('12', '20', '', '{001}/{YYYY}', '', '1', '0'),
('13', '21', '', '{001}/{YYYY}', '', '1', '0'),
('14', '22', '', '{001}/{YYYY}', '', '1', '0'),
('15', '25', '', '{001}/{YYYY}', '', '1', '0'),
('16', '26', '', '{001}/{YYYY}', '', '1', '0'),
('17', '28', '', '{001}/{YYYY}', '', '1', '0'),
('18', '29', '', '{001}/{YYYY}', '', '1', '0'),
('19', '30', '', '{001}/{YYYY}', '', '1', '0'),
('20', '32', '', '{001}/{YYYY}', '', '1', '0'),
('21', '35', '', '{001}/{YYYY}', '', '1', '0'),
('22', '40', '', '{001}/{YYYY}', '', '1', '0');

### Structure of table `fl94_refs` ###

DROP TABLE IF EXISTS `fl94_refs`;

CREATE TABLE `fl94_refs` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`type`),
  KEY `Type_and_Reference` (`type`,`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_refs` ###

INSERT INTO `fl94_refs` VALUES
('1', '0', '001/2012'),
('1', '1', '001/2015'),
('1', '10', '001/2015'),
('2', '10', '002/2015'),
('3', '10', '003/2015'),
('4', '10', '004/2015'),
('1', '12', '001/2015'),
('2', '12', '002/2015'),
('3', '12', '003/2015'),
('1', '18', '001/2015'),
('1', '20', '001/2015'),
('1', '25', '001/2015'),
('1', '26', '001/2015'),
('2', '26', '002/2015'),
('3', '26', '003/2015'),
('3', '30', '001/2015'),
('4', '30', '002/2015'),
('6', '30', '003/2015'),
('1', '40', '001/2015');

### Structure of table `fl94_sales_order_details` ###

DROP TABLE IF EXISTS `fl94_sales_order_details`;

CREATE TABLE `fl94_sales_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL DEFAULT '0',
  `trans_type` smallint(6) NOT NULL DEFAULT '30',
  `stk_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci,
  `qty_sent` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `invoiced` double NOT NULL DEFAULT '0',
  `discount_percent` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sorder` (`trans_type`,`order_no`),
  KEY `stkcode` (`stk_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_sales_order_details` ###

INSERT INTO `fl94_sales_order_details` VALUES
('1', '1', '30', '101', 'iPad Air 2 16GB', '20', '300', '20', '0', '0'),
('2', '1', '30', '301', 'Support', '3', '80', '3', '0', '0'),
('3', '2', '30', '101', 'iPad Air 2 16GB', '1', '300', '1', '0', '0'),
('4', '3', '30', '102', 'iPhone 6 64GB', '0', '250', '1', '0', '0'),
('5', '3', '30', '103', 'iPhone Cover Case', '0', '50', '1', '0', '0'),
('6', '4', '30', '101', 'iPad Air 2 16GB', '0', '267.14', '1', '0', '0'),
('7', '5', '30', '102', 'iPhone 6 64GB', '1', '222.62', '1', '0', '0'),
('8', '5', '30', '103', 'iPhone Cover Case', '1', '44.52', '1', '0', '0'),
('9', '6', '30', '202', 'Maintenance', '0', '90', '5', '0', '0'),
('10', '7', '30', '202', 'Maintenance', '5', '0', '5', '0', '0');

### Structure of table `fl94_sales_orders` ###

DROP TABLE IF EXISTS `fl94_sales_orders`;

CREATE TABLE `fl94_sales_orders` (
  `order_no` int(11) NOT NULL,
  `trans_type` smallint(6) NOT NULL DEFAULT '30',
  `version` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `debtor_no` int(11) NOT NULL DEFAULT '0',
  `branch_code` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customer_ref` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comments` tinytext COLLATE utf8_unicode_ci,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `order_type` int(11) NOT NULL DEFAULT '0',
  `ship_via` int(11) NOT NULL DEFAULT '0',
  `delivery_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deliver_to` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `freight_cost` double NOT NULL DEFAULT '0',
  `from_stk_loc` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `payment_terms` int(11) DEFAULT NULL,
  `total` double NOT NULL DEFAULT '0',
  `prep_amount` double NOT NULL DEFAULT '0',
  `alloc` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`trans_type`,`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_sales_orders` ###

INSERT INTO `fl94_sales_orders` VALUES
('1', '30', '1', '0', '1', '1', 'auto', '', NULL, '2015-05-10', '1', '1', 'N/A', NULL, NULL, 'Donald Easter LLC', '0', 'DEF', '2015-05-05', '4', '6240', '0', '0'),
('2', '30', '1', '0', '1', '1', 'auto', '', NULL, '2015-05-07', '1', '1', 'N/A', NULL, NULL, 'Donald Easter LLC', '0', 'DEF', '2015-05-07', '4', '300', '0', '0'),
('3', '30', '0', '0', '1', '1', '001/2015', '', NULL, '2015-05-07', '1', '1', 'N/A', NULL, NULL, 'Donald Easter LLC', '0', 'DEF', '2015-05-08', '4', '300', '0', '0'),
('4', '30', '0', '0', '2', '2', '002/2015', '', NULL, '2015-05-07', '1', '1', 'N/A', NULL, NULL, 'MoneyMaker Ltd.', '0', 'DEF', '2015-05-08', '1', '267.14', '0', '0'),
('5', '30', '1', '0', '2', '2', 'auto', '', NULL, '2015-05-07', '1', '1', 'N/A', NULL, NULL, 'MoneyMaker Ltd.', '0', 'DEF', '2015-06-17', '1', '267.14', '0', '0'),
('6', '30', '0', '1', '1', '1', '003/2015', '', NULL, '2015-05-07', '1', '1', 'N/A', NULL, NULL, 'Donald Easter LLC', '0', 'DEF', '2015-05-08', '4', '450', '0', '0'),
('7', '30', '1', '0', '1', '1', 'auto', '', 'Recurrent Invoice covers period 04/01/2015 - 04/07/2015.', '2015-05-07', '1', '1', 'N/A', NULL, NULL, 'Donald Easter LLC', '0', 'DEF', '2015-05-07', '4', '0', '0', '0');

### Structure of table `fl94_sales_pos` ###

DROP TABLE IF EXISTS `fl94_sales_pos`;

CREATE TABLE `fl94_sales_pos` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pos_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cash_sale` tinyint(1) NOT NULL,
  `credit_sale` tinyint(1) NOT NULL,
  `pos_location` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pos_account` smallint(6) unsigned NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pos_name` (`pos_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_sales_pos` ###

INSERT INTO `fl94_sales_pos` VALUES
('1', 'Default', '1', '1', 'DEF', '2', '0');

### Structure of table `fl94_sales_types` ###

DROP TABLE IF EXISTS `fl94_sales_types`;

CREATE TABLE `fl94_sales_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_type` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_included` int(1) NOT NULL DEFAULT '0',
  `factor` double NOT NULL DEFAULT '1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sales_type` (`sales_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_sales_types` ###

INSERT INTO `fl94_sales_types` VALUES
('1', 'Retail', '1', '1', '0'),
('2', 'Wholesaling', '0', '0.7', '0');

### Structure of table `fl94_salesman` ###

DROP TABLE IF EXISTS `fl94_salesman`;

CREATE TABLE `fl94_salesman` (
  `salesman_code` int(11) NOT NULL AUTO_INCREMENT,
  `salesman_name` char(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salesman_phone` char(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salesman_fax` char(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salesman_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `provision` double NOT NULL DEFAULT '0',
  `break_pt` double NOT NULL DEFAULT '0',
  `provision2` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`salesman_code`),
  UNIQUE KEY `salesman_name` (`salesman_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_salesman` ###

INSERT INTO `fl94_salesman` VALUES
('1', 'Comercial', '', '', '', '5', '1000', '4', '0');

### Structure of table `fl94_security_roles` ###

DROP TABLE IF EXISTS `fl94_security_roles`;

CREATE TABLE `fl94_security_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sections` text COLLATE utf8_unicode_ci,
  `areas` text COLLATE utf8_unicode_ci,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_security_roles` ###

INSERT INTO `fl94_security_roles` VALUES
('1', 'Inquiries', 'Inquiries', '768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;773;774;2822;3073;3075;3076;3077;3329;3330;3331;3332;3333;3334;3335;5377;5633;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8450;8451;10497;10753;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15622;15623;15624;15625;15626;15873;15882;16129;16130;16131;16132;775', '0'),
('2', 'System Administrator', 'System Administrator', '256;512;768;2816;3072;3328;5376;5632;5888;7936;8192;8448;9216;9472;9728;10496;10752;11008;13056;13312;15616;15872;16128;287744', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;526;769;770;771;772;773;774;775;2817;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5636;5637;5641;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8195;8196;8197;8449;8450;8451;9217;9218;9220;9473;9474;9475;9476;9729;10497;10753;10754;10755;10756;10757;11009;11010;11011;11012;13057;13313;13314;13315;15617;15618;15619;15620;15621;15622;15623;15624;15628;15625;15626;15627;15630;15629;15873;15874;15875;15876;15877;15878;15879;15880;15883;15881;15882;15884;16129;16130;16131;16132;287844;287845', '0'),
('3', 'Salesman', 'Salesman', '768;3072;5632;8192;15872', '773;774;3073;3075;3081;5633;8194;15873;775', '0'),
('4', 'Stock Manager', 'Stock Manager', '768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '2818;2822;3073;3076;3077;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5889;5890;5891;8193;8194;8450;8451;10753;11009;11010;11012;13313;13315;15882;16129;16130;16131;16132;775', '0'),
('5', 'Production Manager', 'Production Manager', '512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5640;5889;5890;5891;8193;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', '0'),
('6', 'Purchase Officer', 'Purchase Officer', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5377;5633;5635;5640;5640;5889;5890;5891;8193;8194;8196;8197;8449;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', '0'),
('7', 'AR Officer', 'AR Officer', '512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128;287744', '521;523;524;771;773;774;775;2818;2819;2820;2821;2822;2823;3073;3074;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5633;5634;5637;5638;5639;5640;5889;5890;5891;8193;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132;287844;287845', '0'),
('8', 'AP Officer', 'AP Officer', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128;287744', '521;523;524;769;770;771;772;773;774;775;2818;2819;2820;2821;2822;2823;3073;3074;3082;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5635;5640;5889;5890;5891;8193;8194;8196;8197;8449;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15876;15877;15880;15882;16129;16130;16131;16132;287844;287845;257;258;259;260;7937;7938;7939;7940;10497;13057', '0'),
('9', 'Accountant', 'New Accountant', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128;287744', '521;523;524;771;772;773;774;775;2818;2819;2820;2821;2822;2823;3073;3074;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;8193;8194;8196;8197;8449;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132;287844;287845;257;258;259;260;7937;7938;7939;7940;10497', '0'),
('10', 'Sub Admin', 'Sub Admin', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128;287744', '521;523;524;771;772;773;774;775;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;8193;8194;8196;8197;8449;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15873;15874;15876;15877;15878;15879;15880;15882;16129;16130;16131;16132;287844;287845;257;258;259;260;7937;7938;7939;7940;10497;13057', '0');

### Structure of table `fl94_shippers` ###

DROP TABLE IF EXISTS `fl94_shippers`;

CREATE TABLE `fl94_shippers` (
  `shipper_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipper_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipper_id`),
  UNIQUE KEY `name` (`shipper_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_shippers` ###

INSERT INTO `fl94_shippers` VALUES
('1', 'Default', '', '', '', '', '0'),
('2', 'CHRONOPOST PORTUGAL SA', '707 202 828', '', '', 'Av. Infante Dom Henrique 10, 1849-003 ', '0'),
('3', 'MRW Portugal', '800 236 333', '', '', 'Av. Terra da Pastoria, 2625-253 Vialonga', '0');

### Structure of table `fl94_sql_trail` ###

DROP TABLE IF EXISTS `fl94_sql_trail`;

CREATE TABLE `fl94_sql_trail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sql` text COLLATE utf8_unicode_ci NOT NULL,
  `result` tinyint(1) NOT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_sql_trail` ###


### Structure of table `fl94_stock_category` ###

DROP TABLE IF EXISTS `fl94_stock_category`;

CREATE TABLE `fl94_stock_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_tax_type` int(11) NOT NULL DEFAULT '1',
  `dflt_units` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'each',
  `dflt_mb_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'B',
  `dflt_sales_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_cogs_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_inventory_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_adjustment_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_wip_act` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dflt_dim1` int(11) DEFAULT NULL,
  `dflt_dim2` int(11) DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `dflt_no_sale` tinyint(1) NOT NULL DEFAULT '0',
  `dflt_no_purchase` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_stock_category` ###

INSERT INTO `fl94_stock_category` VALUES
('1', 'Components', '1', 'each', 'B', '7.1.1.1', '6.1.1.1', '3.1.1.1', '6.4.3.1', '6.2.2.2', '0', '0', '0', '0', '0'),
('3', 'Systems', '1', 'each', 'M', '7.1.1.1', '6.1.1.1', '3.1.1.1', '6.4.3.1', '6.2.2.2', '0', '0', '0', '0', '0'),
('4', 'Services', '1', 'hr', 'D', '7.1.1.1', '6.1.1.1', '3.1.1.1', '6.4.3.1', '6.2.2.2', '0', '0', '0', '0', '0');

### Structure of table `fl94_stock_fa_class` ###

DROP TABLE IF EXISTS `fl94_stock_fa_class`;

CREATE TABLE `fl94_stock_fa_class` (
  `fa_class_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `long_description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `depreciation_rate` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fa_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_stock_fa_class` ###


### Structure of table `fl94_stock_master` ###

DROP TABLE IF EXISTS `fl94_stock_master`;

CREATE TABLE `fl94_stock_master` (
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `long_description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `units` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'each',
  `mb_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'B',
  `sales_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cogs_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inventory_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `adjustment_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `wip_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dimension_id` int(11) DEFAULT NULL,
  `dimension2_id` int(11) DEFAULT NULL,
  `purchase_cost` double NOT NULL DEFAULT '0',
  `material_cost` double NOT NULL DEFAULT '0',
  `labour_cost` double NOT NULL DEFAULT '0',
  `overhead_cost` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `no_sale` tinyint(1) NOT NULL DEFAULT '0',
  `no_purchase` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `depreciation_method` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `depreciation_rate` double NOT NULL DEFAULT '0',
  `depreciation_factor` double NOT NULL DEFAULT '1',
  `depreciation_start` date NOT NULL DEFAULT '0000-00-00',
  `depreciation_date` date NOT NULL DEFAULT '0000-00-00',
  `fa_class_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_stock_master` ###

INSERT INTO `fl94_stock_master` VALUES
('101', '1', '1', 'iPad Air 2 16GB', '', 'each', 'B', '7.1.1.1', '6.1.1.1', '3.1.1.1', '6.4.3.1', '1530', '0', '0', '0', '200', '0', '0', '0', '0', '0', '0', 'S', '0', '1', '0000-00-00', '0000-00-00', ''),
('102', '1', '1', 'iPhone 6 64GB', '', 'each', 'B', '7.1.1.1', '6.1.1.1', '3.1.1.1', '6.4.3.1', '1530', '0', '0', '0', '150', '0', '0', '0', '0', '0', '0', 'S', '0', '1', '0000-00-00', '0000-00-00', ''),
('103', '1', '1', 'iPhone Cover Case', '', 'each', 'B', '7.1.1.1', '6.1.1.1', '3.1.1.1', '6.4.3.1', '1530', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', 'S', '0', '1', '0000-00-00', '0000-00-00', ''),
('201', '3', '1', 'AP Surf Set', '', 'each', 'M', '7.1.1.1', '6.1.1.1', '3.1.1.1', '6.4.3.1', '3.4.1', '0', '0', '0', '360', '0', '0', '0', '0', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('202', '4', '1', 'Maintenance', '', 'hr', 'D', '7.1.1.1', '6.1.1.1', '3.1.1.1', '6.4.3.1', '1530', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('301', '4', '1', 'Support', '', 'hr', 'D', '7.1.1.1', '6.1.1.1', '3.1.1.1', '6.4.3.1', '1530', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'S', '0', '1', '0000-00-00', '0000-00-00', ''),
('DH1SY0D0102M', '1', '1', 'Cabinet - SKD LE32M630S', '', 'each', 'B', '7.1.1.1', '6.1.1.1', '3.1.1.1', '6.4.3.1', '1530', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('DH1TB0M0703M', '1', '1', 'Placa Principal - LE46M660', '', 'each', 'B', '7.1.1.1', '6.1.1.1', '3.1.1.1', '6.4.3.1', '1530', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', '0', '0', '0000-00-00', '0000-00-00', ''),
('DIR-636', '1', '1', 'ROUTER DLINK WIFI 300MB', '', 'each', 'M', '7.1.1.1', '6.1.1.1', '3.1.1.1', '6.4.3.1', '1530', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '', '0', '0', '0000-00-00', '0000-00-00', '');

### Structure of table `fl94_stock_moves` ###

DROP TABLE IF EXISTS `fl94_stock_moves`;

CREATE TABLE `fl94_stock_moves` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_no` int(11) NOT NULL DEFAULT '0',
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `price` double NOT NULL DEFAULT '0',
  `reference` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qty` double NOT NULL DEFAULT '1',
  `standard_cost` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`trans_id`),
  KEY `type` (`type`,`trans_no`),
  KEY `Move` (`stock_id`,`loc_code`,`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_stock_moves` ###

INSERT INTO `fl94_stock_moves` VALUES
('1', '1', '101', '25', 'DEF', '2015-05-05', '200', '', '100', '200'),
('2', '1', '102', '25', 'DEF', '2015-05-05', '150', '', '100', '150'),
('3', '1', '103', '25', 'DEF', '2015-05-05', '10', '', '100', '10'),
('4', '1', '101', '13', 'DEF', '2015-05-10', '300', 'auto', '-20', '200'),
('5', '1', '301', '13', 'DEF', '2015-05-10', '80', 'auto', '-3', '0'),
('6', '1', '101', '26', 'DEF', '2015-05-05', '200', '001/2015', '-2', '200'),
('7', '1', '102', '26', 'DEF', '2015-05-05', '150', '001/2015', '-2', '150'),
('8', '1', '103', '26', 'DEF', '2015-05-05', '10', '001/2015', '-2', '10'),
('9', '1', '301', '26', 'DEF', '2015-05-05', '0', '001/2015', '-2', '0'),
('10', '1', '201', '26', 'DEF', '2015-05-05', '0', '001/2015', '2', '0'),
('11', '2', '101', '25', 'DEF', '2015-05-05', '200', '', '15', '200'),
('12', '2', '101', '13', 'DEF', '2015-05-07', '300', 'auto', '-1', '200'),
('13', '3', '102', '13', 'DEF', '2015-05-07', '222.62', 'auto', '-1', '150'),
('14', '3', '103', '13', 'DEF', '2015-05-07', '44.52', 'auto', '-1', '10'),
('15', '4', '202', '13', 'DEF', '2015-05-07', '0', 'auto', '-5', '0');

### Structure of table `fl94_supp_allocations` ###

DROP TABLE IF EXISTS `fl94_supp_allocations`;

CREATE TABLE `fl94_supp_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `amt` double unsigned DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int(11) DEFAULT NULL,
  `trans_type_from` int(11) DEFAULT NULL,
  `trans_no_to` int(11) DEFAULT NULL,
  `trans_type_to` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trans_type_from` (`person_id`,`trans_type_from`,`trans_no_from`,`trans_type_to`,`trans_no_to`),
  KEY `From` (`trans_type_from`,`trans_no_from`),
  KEY `To` (`trans_type_to`,`trans_no_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_supp_allocations` ###


### Structure of table `fl94_supp_invoice_items` ###

DROP TABLE IF EXISTS `fl94_supp_invoice_items`;

CREATE TABLE `fl94_supp_invoice_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supp_trans_no` int(11) DEFAULT NULL,
  `supp_trans_type` int(11) DEFAULT NULL,
  `gl_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `grn_item_id` int(11) DEFAULT NULL,
  `po_detail_item_id` int(11) DEFAULT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `unit_tax` double NOT NULL DEFAULT '0',
  `memo_` tinytext COLLATE utf8_unicode_ci,
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `Transaction` (`supp_trans_type`,`supp_trans_no`,`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_supp_invoice_items` ###

INSERT INTO `fl94_supp_invoice_items` VALUES
('1', '1', '20', '0', '4', '4', '101', 'iPad Air 2 16GB', '15', '200', '10', NULL, '0', '0');

### Structure of table `fl94_supp_trans` ###

DROP TABLE IF EXISTS `fl94_supp_trans`;

CREATE TABLE `fl94_supp_trans` (
  `trans_no` int(11) unsigned NOT NULL DEFAULT '0',
  `type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `supplier_id` int(11) unsigned DEFAULT NULL,
  `reference` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `supp_reference` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `ov_amount` double NOT NULL DEFAULT '0',
  `ov_discount` double NOT NULL DEFAULT '0',
  `ov_gst` double NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1',
  `alloc` double NOT NULL DEFAULT '0',
  `tax_included` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`,`trans_no`),
  KEY `supplier_id` (`supplier_id`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_supp_trans` ###

INSERT INTO `fl94_supp_trans` VALUES
('1', '20', '1', '001/2015', 'rr4', '2015-05-05', '2015-05-15', '3000', '0', '150', '1', '0', '0');

### Structure of table `fl94_suppliers` ###

DROP TABLE IF EXISTS `fl94_suppliers`;

CREATE TABLE `fl94_suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supp_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `supp_ref` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `supp_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `gst_no` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `supp_account_no` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bank_account` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `curr_code` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_terms` int(11) DEFAULT NULL,
  `tax_included` tinyint(1) NOT NULL DEFAULT '0',
  `dimension_id` int(11) DEFAULT '0',
  `dimension2_id` int(11) DEFAULT '0',
  `tax_group_id` int(11) DEFAULT NULL,
  `credit_limit` double NOT NULL DEFAULT '0',
  `purchase_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payable_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `notes` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`supplier_id`),
  KEY `supp_ref` (`supp_ref`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_suppliers` ###

INSERT INTO `fl94_suppliers` VALUES
('1', 'Dino Saurius Inc.', 'Dino Saurius', 'N/A', '', '987654321', '', '', '', '', 'USD', '3', '0', '0', '0', '1', '0', '', '2.2.1.3', '3.1.8', '', '0'),
('2', 'Beefeater Ltd.', 'Beefeater', 'N/A', '', '67565590', '', '', '', '', 'GBP', '4', '0', '0', '0', '1', '0', '', '2.2.1.2', '3.1.8', '', '0'),
('3', 'Adsoul', 'Adsoul', 'Rua Soeiro Pereira Gomes Lote 1, 3C 1600-870 Lisboa Portugal', 'Rua Soeiro Pereira Gomes Lote 1, 3C 1600-870 Lisboa Portugal', 'PT509414192', '', '2500001', '', '', 'EUR', '3', '0', '0', '0', '1', '0', '', '2.2.1.1', '3.1.8', '', '0'),
('4', 'QUARKCORE,UNIPESSOAL,LDA', 'QUARKCORE', 'Almeida Garret 5,2 2625-272 Portugal', 'Almeida Garret 5,2 2625-272 Portugal', 'PT510829643', '', '', '', '', 'EUR', '3', '0', '0', '0', '1', '0', '', '2.2.1.4', '3.1.8', '', '0'),
('5', 'Worten-Equipamentos Para Lar,S.A', 'Worten', 'Rua Joao  Mendonca, 4480-089 Vila do Conde Portugal', 'Rua Joao  Mendonca, 4480-089 Vila do Conde Portugal', 'PT503630330', '', '', '', '', 'EUR', '3', '0', '0', '0', '1', '0', '', '2.2.1.5', '3.1.8', '', '0');

### Structure of table `fl94_sys_prefs` ###

DROP TABLE IF EXISTS `fl94_sys_prefs`;

CREATE TABLE `fl94_sys_prefs` (
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `length` smallint(6) DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_sys_prefs` ###

INSERT INTO `fl94_sys_prefs` VALUES
('accounts_alpha', 'glsetup.general', 'tinyint', '1', '0'),
('accumulate_shipping', 'glsetup.customer', 'tinyint', '1', '0'),
('add_pct', 'setup.company', 'int', '5', '-1'),
('allow_negative_prices', 'glsetup.inventory', 'tinyint', '1', '1'),
('allow_negative_stock', 'glsetup.inventory', 'tinyint', '1', '0'),
('alternative_tax_include_on_docs', 'setup.company', 'tinyint', '1', ''),
('auto_curr_reval', 'setup.company', 'smallint', '6', '1'),
('bank_charge_act', 'glsetup.general', 'varchar', '15', '6.8.6.1'),
('base_sales', 'setup.company', 'int', '11', '1'),
('bcc_email', 'setup.company', 'varchar', '100', ''),
('coy_logo', 'setup.company', 'varchar', '100', 'logo_frontaccounting.jpg'),
('coy_name', 'setup.company', 'varchar', '60', 'IUL ERP'),
('coy_no', 'setup.company', 'varchar', '25', ''),
('creditors_act', 'glsetup.purchase', 'varchar', '15', '3.1.8'),
('curr_default', 'setup.company', 'char', '3', 'EUR'),
('debtors_act', 'glsetup.sales', 'varchar', '15', '6.2.1.1'),
('default_adj_act', 'glsetup.items', 'varchar', '15', '6.4.3.1'),
('default_cogs_act', 'glsetup.items', 'varchar', '15', '6.1.1.1'),
('default_credit_limit', 'glsetup.customer', 'int', '11', '1000'),
('default_delivery_required', 'glsetup.sales', 'smallint', '6', '1'),
('default_dim_required', 'glsetup.dims', 'int', '11', '20'),
('default_inv_sales_act', 'glsetup.items', 'varchar', '15', '7.1.1.1'),
('default_inventory_act', 'glsetup.items', 'varchar', '15', '3.1.1.1'),
('default_loss_on_asset_disposal_act', 'glsetup.items', 'varchar', '15', '6.2.1.1'),
('default_prompt_payment_act', 'glsetup.sales', 'varchar', '15', '6.8.2.1'),
('default_quote_valid_days', 'glsetup.sales', 'smallint', '6', '30'),
('default_receival_required', 'glsetup.purchase', 'smallint', '6', '10'),
('default_sales_act', 'glsetup.sales', 'varchar', '15', '7.1.1.1'),
('default_sales_discount_act', 'glsetup.sales', 'varchar', '15', '7.1.8.1'),
('default_wip_act', 'glsetup.items', 'varchar', '15', '3.4.1'),
('default_workorder_required', 'glsetup.manuf', 'int', '11', '20'),
('deferred_income_act', 'glsetup.sales', 'varchar', '15', ''),
('depreciation_period', 'glsetup.company', 'tinyint', '1', '1'),
('domicile', 'setup.company', 'varchar', '55', ''),
('email', 'setup.company', 'varchar', '100', 'geral@iulerp.pt'),
('exchange_diff_act', 'glsetup.general', 'varchar', '15', '6.9.2.1'),
('f_year', 'setup.company', 'int', '11', '2'),
('fax', 'setup.company', 'varchar', '30', ''),
('freight_act', 'glsetup.customer', 'varchar', '15', '6.2.5.3'),
('gl_closing_date', 'setup.closing_date', 'date', '8', '2015-12-31'),
('grn_clearing_act', 'glsetup.purchase', 'varchar', '15', '1550'),
('gst_no', 'setup.company', 'varchar', '25', '33445566'),
('legal_text', 'glsetup.customer', 'tinytext', '0', ''),
('loc_notification', 'glsetup.inventory', 'tinyint', '1', ''),
('login_tout', 'setup.company', 'smallint', '6', '600'),
('no_customer_list', 'setup.company', 'tinyint', '1', '1'),
('no_item_list', 'setup.company', 'tinyint', '1', '1'),
('no_supplier_list', 'setup.company', 'tinyint', '1', '1'),
('no_zero_lines_amount', 'glsetup.sales', 'tinyint', '1', '1'),
('past_due_days', 'glsetup.general', 'int', '11', '30'),
('phone', 'setup.company', 'varchar', '30', ''),
('po_over_charge', 'glsetup.purchase', 'int', '11', '10'),
('po_over_receive', 'glsetup.purchase', 'int', '11', '10'),
('postal_address', 'setup.company', 'tinytext', '0', 'N/A'),
('print_invoice_no', 'glsetup.sales', 'tinyint', '1', '0'),
('print_item_images_on_quote', 'glsetup.inventory', 'tinyint', '1', ''),
('profit_loss_year_act', 'glsetup.general', 'varchar', '15', '5.6.1'),
('pyt_discount_act', 'glsetup.purchase', 'varchar', '15', '3.1.8'),
('retained_earnings_act', 'glsetup.general', 'varchar', '15', '5.6.1'),
('round_to', 'setup.company', 'int', '5', '1'),
('show_po_item_codes', 'glsetup.purchase', 'tinyint', '1', ''),
('suppress_tax_rates', 'setup.company', 'tinyint', '1', ''),
('tax_algorithm', 'glsetup.customer', 'tinyint', '1', '1'),
('tax_last', 'setup.company', 'int', '11', '1'),
('tax_prd', 'setup.company', 'int', '11', '1'),
('time_zone', 'setup.company', 'tinyint', '1', '0'),
('use_dimension', 'setup.company', 'tinyint', '1', '0'),
('use_fixed_assets', 'setup.company', 'tinyint', '1', ''),
('use_manufacturing', 'setup.company', 'tinyint', '1', '1'),
('version_id', 'system', 'varchar', '11', '2.4.1');

### Structure of table `fl94_sys_types` ###

DROP TABLE IF EXISTS `fl94_sys_types`;

CREATE TABLE `fl94_sys_types` (
  `type_id` smallint(6) NOT NULL DEFAULT '0',
  `type_no` int(11) NOT NULL DEFAULT '1',
  `next_reference` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

### Data of table `fl94_sys_types` ###

INSERT INTO `fl94_sys_types` VALUES
('0', '17', '1'),
('1', '7', '1'),
('2', '4', '1'),
('4', '3', '1'),
('10', '16', '1'),
('11', '2', '1'),
('12', '6', '1'),
('13', '1', '1'),
('16', '2', '1'),
('17', '2', '1'),
('18', '1', '1'),
('20', '6', '1'),
('21', '1', '1'),
('22', '3', '1'),
('25', '1', '1'),
('26', '1', '1'),
('28', '1', '1'),
('29', '1', '1'),
('30', '0', '1'),
('32', '0', '1'),
('35', '1', '1'),
('40', '1', '1');

### Structure of table `fl94_tag_associations` ###

DROP TABLE IF EXISTS `fl94_tag_associations`;

CREATE TABLE `fl94_tag_associations` (
  `record_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `tag_id` int(11) NOT NULL,
  UNIQUE KEY `record_id` (`record_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_tag_associations` ###


### Structure of table `fl94_tags` ###

DROP TABLE IF EXISTS `fl94_tags`;

CREATE TABLE `fl94_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_tags` ###


### Structure of table `fl94_tax_group_items` ###

DROP TABLE IF EXISTS `fl94_tax_group_items`;

CREATE TABLE `fl94_tax_group_items` (
  `tax_group_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `tax_shipping` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_group_id`,`tax_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_tax_group_items` ###

INSERT INTO `fl94_tax_group_items` VALUES
('1', '1', '1');

### Structure of table `fl94_tax_groups` ###

DROP TABLE IF EXISTS `fl94_tax_groups`;

CREATE TABLE `fl94_tax_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_tax_groups` ###

INSERT INTO `fl94_tax_groups` VALUES
('1', 'Tax', '0'),
('2', 'Tax Exempt', '0');

### Structure of table `fl94_tax_types` ###

DROP TABLE IF EXISTS `fl94_tax_types`;

CREATE TABLE `fl94_tax_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` double NOT NULL DEFAULT '0',
  `sales_gl_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `purchasing_gl_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_tax_types` ###

INSERT INTO `fl94_tax_types` VALUES
('1', '23', '2.4.3.1', '2.4.3.2', 'IVA 23%', '0');

### Structure of table `fl94_trans_tax_details` ###

DROP TABLE IF EXISTS `fl94_trans_tax_details`;

CREATE TABLE `fl94_trans_tax_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_type` smallint(6) DEFAULT NULL,
  `trans_no` int(11) DEFAULT NULL,
  `tran_date` date NOT NULL,
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '0',
  `ex_rate` double NOT NULL DEFAULT '1',
  `included_in_price` tinyint(1) NOT NULL DEFAULT '0',
  `net_amount` double NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `memo` tinytext COLLATE utf8_unicode_ci,
  `reg_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Type_and_Number` (`trans_type`,`trans_no`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_trans_tax_details` ###

INSERT INTO `fl94_trans_tax_details` VALUES
('1', '13', '1', '2015-05-10', '1', '5', '1', '1', '5942.86', '297.14', 'auto', NULL),
('2', '10', '1', '2015-05-10', '1', '5', '1', '1', '5942.86', '297.14', '001/2015', '0'),
('3', '20', '1', '2015-05-05', '1', '5', '1', '0', '3000', '150', 'rr4', '1'),
('4', '13', '2', '2015-05-07', '1', '5', '1', '1', '285.71', '14.29', 'auto', NULL),
('5', '10', '2', '2015-05-07', '1', '5', '1', '1', '285.71', '14.29', '002/2015', '0'),
('6', '13', '3', '2015-05-07', '0', '0', '1.123', '1', '267.14', '0', 'auto', NULL),
('7', '10', '3', '2015-05-07', '0', '0', '1.123', '1', '267.14', '0', '003/2015', '0');

### Structure of table `fl94_useronline` ###

DROP TABLE IF EXISTS `fl94_useronline`;

CREATE TABLE `fl94_useronline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=1529 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_useronline` ###

INSERT INTO `fl94_useronline` VALUES
('1516', '1459617796', '79.169.84.17', '/erp/gl/manage/gl_accounts.php'),
('1517', '1459617800', '79.169.84.17', '/erp/index.php'),
('1518', '1459617803', '79.169.84.17', '/erp/admin/backups.php'),
('1519', '1459617805', '79.169.84.17', '/erp/admin/backups.php'),
('1520', '1459617810', '79.169.84.17', '/erp/admin/backups.php'),
('1521', '1459617813', '79.169.84.17', '/erp/admin/backups.php'),
('1522', '1459617816', '79.169.84.17', '/erp/admin/backups.php'),
('1523', '1459617819', '79.169.84.17', '/erp/admin/backups.php'),
('1524', '1459617821', '79.169.84.17', '/erp/admin/backups.php'),
('1525', '1459617889', '79.169.84.17', '/erp/admin/backups.php'),
('1526', '1459617892', '79.169.84.17', '/erp/admin/backups.php'),
('1527', '1459617895', '79.169.84.17', '/erp/admin/backups.php'),
('1528', '1459617897', '79.169.84.17', '/erp/admin/backups.php');

### Structure of table `fl94_users` ###

DROP TABLE IF EXISTS `fl94_users`;

CREATE TABLE `fl94_users` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role_id` int(11) NOT NULL DEFAULT '1',
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_format` tinyint(1) NOT NULL DEFAULT '0',
  `date_sep` tinyint(1) NOT NULL DEFAULT '0',
  `tho_sep` tinyint(1) NOT NULL DEFAULT '0',
  `dec_sep` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `page_size` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A4',
  `prices_dec` smallint(6) NOT NULL DEFAULT '2',
  `qty_dec` smallint(6) NOT NULL DEFAULT '2',
  `rates_dec` smallint(6) NOT NULL DEFAULT '4',
  `percent_dec` smallint(6) NOT NULL DEFAULT '1',
  `show_gl` tinyint(1) NOT NULL DEFAULT '1',
  `show_codes` tinyint(1) NOT NULL DEFAULT '0',
  `show_hints` tinyint(1) NOT NULL DEFAULT '0',
  `last_visit_date` datetime DEFAULT NULL,
  `query_size` tinyint(1) unsigned NOT NULL DEFAULT '10',
  `graphic_links` tinyint(1) DEFAULT '1',
  `pos` smallint(6) DEFAULT '1',
  `print_profile` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rep_popup` tinyint(1) DEFAULT '1',
  `sticky_doc_date` tinyint(1) DEFAULT '0',
  `startup_tab` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `transaction_days` smallint(6) NOT NULL DEFAULT '30',
  `save_report_selections` smallint(6) NOT NULL DEFAULT '0',
  `use_date_picker` tinyint(1) NOT NULL DEFAULT '1',
  `def_print_destination` tinyint(1) NOT NULL DEFAULT '0',
  `def_print_orientation` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_users` ###

INSERT INTO `fl94_users` VALUES
('1', 'admin', 'b938a079940c5935abe33121e7148d99', 'Administrator', '2', '', 'ranua@iscte.pt', 'pt_PT', '1', '0', '0', '0', 'modern', 'Letter', '2', '2', '4', '1', '1', '1', '1', '2016-04-02 16:23:03', '10', '1', '1', '', '1', '1', 'orders', '30', '0', '1', '0', '0', '0'),
('4', 'subadmin', '5f4dcc3b5aa765d61d8327deb882cf99', '', '10', '', NULL, 'pt_PT', '0', '0', '0', '0', 'modern', 'Letter', '2', '2', '4', '1', '1', '0', '0', NULL, '10', '1', '1', '', '1', '0', 'orders', '30', '0', '1', '0', '0', '0'),
('5', 'rnatu', '09232ba5089850e1f49e5c389c6f8672', '', '2', '', NULL, 'pt_PT', '1', '0', '0', '0', 'modern', 'Letter', '2', '2', '4', '1', '1', '1', '1', NULL, '10', '1', '1', '', '1', '1', 'orders', '30', '0', '1', '0', '0', '0');

### Structure of table `fl94_voided` ###

DROP TABLE IF EXISTS `fl94_voided`;

CREATE TABLE `fl94_voided` (
  `type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `memo_` tinytext COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_voided` ###


### Structure of table `fl94_wo_costing` ###

DROP TABLE IF EXISTS `fl94_wo_costing`;

CREATE TABLE `fl94_wo_costing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `cost_type` tinyint(1) NOT NULL DEFAULT '0',
  `trans_type` int(11) NOT NULL DEFAULT '0',
  `trans_no` int(11) NOT NULL DEFAULT '0',
  `factor` double NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_wo_costing` ###


### Structure of table `fl94_wo_issue_items` ###

DROP TABLE IF EXISTS `fl94_wo_issue_items`;

CREATE TABLE `fl94_wo_issue_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `qty_issued` double DEFAULT NULL,
  `unit_cost` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_wo_issue_items` ###


### Structure of table `fl94_wo_issues` ###

DROP TABLE IF EXISTS `fl94_wo_issues`;

CREATE TABLE `fl94_wo_issues` (
  `issue_no` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `loc_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workcentre_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`issue_no`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_wo_issues` ###


### Structure of table `fl94_wo_manufacture` ###

DROP TABLE IF EXISTS `fl94_wo_manufacture`;

CREATE TABLE `fl94_wo_manufacture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_wo_manufacture` ###


### Structure of table `fl94_wo_requirements` ###

DROP TABLE IF EXISTS `fl94_wo_requirements`;

CREATE TABLE `fl94_wo_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `stock_id` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workcentre` int(11) NOT NULL DEFAULT '0',
  `units_req` double NOT NULL DEFAULT '1',
  `unit_cost` double NOT NULL DEFAULT '0',
  `loc_code` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `units_issued` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_wo_requirements` ###

INSERT INTO `fl94_wo_requirements` VALUES
('1', '1', '101', '1', '1', '0', 'DEF', '2'),
('2', '1', '102', '1', '1', '0', 'DEF', '2'),
('3', '1', '103', '1', '1', '0', 'DEF', '2'),
('4', '1', '301', '1', '1', '0', 'DEF', '2'),
('5', '2', '101', '1', '1', '0', 'DEF', '0'),
('6', '2', '102', '1', '1', '0', 'DEF', '0'),
('7', '2', '103', '1', '1', '0', 'DEF', '0'),
('8', '2', '301', '1', '1', '0', 'DEF', '0');

### Structure of table `fl94_workcentres` ###

DROP TABLE IF EXISTS `fl94_workcentres`;

CREATE TABLE `fl94_workcentres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_workcentres` ###

INSERT INTO `fl94_workcentres` VALUES
('1', 'Work_Router', 'Linha de Produção Router', '0');

### Structure of table `fl94_workorders` ###

DROP TABLE IF EXISTS `fl94_workorders`;

CREATE TABLE `fl94_workorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wo_ref` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `loc_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `units_reqd` double NOT NULL DEFAULT '1',
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `required_by` date NOT NULL DEFAULT '0000-00-00',
  `released_date` date NOT NULL DEFAULT '0000-00-00',
  `units_issued` double NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `released` tinyint(1) NOT NULL DEFAULT '0',
  `additional_costs` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wo_ref` (`wo_ref`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

### Data of table `fl94_workorders` ###

INSERT INTO `fl94_workorders` VALUES
('1', '001/2015', 'DEF', '2', '201', '2015-05-05', '0', '2015-05-05', '2015-05-05', '2', '1', '1', '0'),
('2', '002/2015', 'DEF', '5', '201', '2015-05-07', '2', '2015-05-27', '2015-05-07', '0', '0', '1', '0'),
('3', '003/2015', 'DEF', '5', '201', '2015-05-07', '2', '2015-05-27', '0000-00-00', '0', '0', '0', '0');