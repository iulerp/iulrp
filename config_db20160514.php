<?php

/*Connection Information for the database
$def_coy - the default company that is pre-selected on login

'host' - the computer ip address or name where the database is. The default is 'localhost' assuming that the web server is also the sql server.

'dbuser' - the user name under which the company database should be accessed.
  NB it is not secure to use root as the dbuser with no password - a user with appropriate privileges must be set up.

'dbpassword' - the password required for the dbuser to authorise the above database user.

'dbname' - the name of the database as defined in the RDMS being used. Typically RDMS allow many databases to be maintained under the same server.
'tbpref' - prefix on table names, or '' if not used. Always use non-empty prefixes if multiply company use the same database.
*/


$def_coy = 0;

$tb_pref_counter = 81;

$db_connections = array (
  0 => 
  array (
    'name' => 'ERP',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'tbpref' => 'fl94_',
  ),
  1 => 
  array (
    'name' => 'empresa20',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '18_',
  ),
  2 => 
  array (
    'name' => 'empresa21',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '19_',
  ),
  3 => 
  array (
    'name' => 'empresa22',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '20_',
  ),
  4 => 
  array (
    'name' => 'empresa23',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '21_',
  ),
  5 => 
  array (
    'name' => 'empresa24',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '22_',
  ),
  6 => 
  array (
    'name' => 'empresa25',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '23_',
  ),
  7 => 
  array (
    'name' => 'empresa26',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '24_',
  ),
  8 => 
  array (
    'name' => 'empresa27',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '45_',
  ),
  9 => 
  array (
    'name' => 'empresa28',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '27_',
  ),
  10 => 
  array (
    'name' => 'empresa29',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '47_',
  ),
  11 => 
  array (
    'name' => 'empresa30',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '29_',
  ),
  12 => 
  array (
    'name' => 'empresa31',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '30_',
  ),
  13 => 
  array (
    'name' => 'empresa32',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '31_',
  ),
  14 => 
  array (
    'name' => 'empresa33',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '46_',
  ),
  15 => 
  array (
    'name' => 'empresa34',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '32_',
  ),
  16 => 
  array (
    'name' => 'empresa35',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '33_',
  ),
  17 => 
  array (
    'name' => 'empresa36',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '48_',
  ),
  18 => 
  array (
    'name' => 'empresa37',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '35_',
  ),
  19 => 
  array (
    'name' => 'empresa38',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '36_',
  ),
  20 => 
  array (
    'name' => 'empresa39',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '37_',
  ),
  21 => 
  array (
    'name' => 'empresa40',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '38_',
  ),
  22 => 
  array (
    'name' => 'empresa41',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '39_',
  ),
  23 => 
  array (
    'name' => 'empresa42',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '40_',
  ),
  24 => 
  array (
    'name' => 'empresa43',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '41_',
  ),
  25 => 
  array (
    'name' => 'empresa44',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '42_',
  ),
  26 => 
  array (
    'name' => 'empresa45',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '43_',
  ),
  27 => 
  array (
    'name' => 'empresa46',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '44_',
  ),
  28 => 
  array (
    'name' => 'empresa60',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '49_',
  ),
  29 => 
  array (
    'name' => 'empresa61',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '50_',
  ),
  30 => 
  array (
    'name' => 'empresa62',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '51_',
  ),
  31 => 
  array (
    'name' => 'empresa63',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '52_',
  ),
  32 => 
  array (
    'name' => 'empresa64',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '53_',
  ),
  33 => 
  array (
    'name' => 'empresa65',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '54_',
  ),
  34 => 
  array (
    'name' => 'empresa66',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '55_',
  ),
  35 => 
  array (
    'name' => 'empresa67',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '56_',
  ),
  36 => 
  array (
    'name' => 'empresa68',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '57_',
  ),
  37 => 
  array (
    'name' => 'empresa69',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '58_',
  ),
  38 => 
  array (
    'name' => 'empresa70',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '59_',
  ),
  39 => 
  array (
    'name' => 'empresa71',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '60_',
  ),
  40 => 
  array (
    'name' => 'empresa72',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '61_',
  ),
  41 => 
  array (
    'name' => 'empresa73',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '62_',
  ),
  42 => 
  array (
    'name' => 'empresa74',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '63_',
  ),
  43 => 
  array (
    'name' => 'empresa75',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '64_',
  ),
  44 => 
  array (
    'name' => 'empresa76',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '65_',
  ),
  45 => 
  array (
    'name' => 'empresa77',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '66_',
  ),
  46 => 
  array (
    'name' => 'empresa78',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '67_',
  ),
  47 => 
  array (
    'name' => 'empresa79',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '68_',
  ),
  48 => 
  array (
    'name' => 'empresa80',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '69_',
  ),
  49 => 
  array (
    'name' => 'empresa81',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '70_',
  ),
  50 => 
  array (
    'name' => 'empresa82',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '71_',
  ),
  51 => 
  array (
    'name' => 'empresa83',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '72_',
  ),
  52 => 
  array (
    'name' => 'empresa84',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '73_',
  ),
  53 => 
  array (
    'name' => 'empresa85',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '74_',
  ),
  54 => 
  array (
    'name' => 'empresa86',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '75_',
  ),
  55 => 
  array (
    'name' => 'empresa87',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '76_',
  ),
  56 => 
  array (
    'name' => 'empresa88',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '77_',
  ),
  57 => 
  array (
    'name' => 'empresa89',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '78_',
  ),
  58 => 
  array (
    'name' => 'empresa90',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '79_',
  ),
  59 => 
  array (
    'name' => 'empresa90',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '80_',
  ),
);
