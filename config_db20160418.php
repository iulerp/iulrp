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

$tb_pref_counter = 47;

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
    'name' => 'empresa01',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '4_',
  ),
  1 => 
  array (
    'name' => 'empresa02',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '5_',
  ),
  3 => 
  array (
    'name' => 'empresa03',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '6_',
  ),
  4 => 
  array (
    'name' => 'empresa04',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '7_',
  ),
  5 => 
  array (
    'name' => 'empresa05',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '8_',
  ),
  6 => 
  array (
    'name' => 'empresa06',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '9_',
  ),
  7 => 
  array (
    'name' => 'empresa07',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '10_',
  ),
  8 => 
  array (
    'name' => 'empresa08',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '11_',
  ),
  9 => 
  array (
    'name' => 'empresa09',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '12_',
  ),
  10 => 
  array (
    'name' => 'empresa10',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '13_',
  ),
  11 => 
  array (
    'name' => 'empresa00',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '14_',
  ),
  12 => 
  array (
    'name' => 'empresa20',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '18_',
  ),
  13 => 
  array (
    'name' => 'empresa21',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '19_',
  ),
  14 => 
  array (
    'name' => 'empresa22',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '20_',
  ),
  15 => 
  array (
    'name' => 'empresa23',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '21_',
  ),
  16 => 
  array (
    'name' => 'empresa24',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '22_',
  ),
  17 => 
  array (
    'name' => 'empresa25',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '23_',
  ),
  18 => 
  array (
    'name' => 'empresa26',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '24_',
  ),
  19 => 
  array (
    'name' => 'empresa28',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '27_',
  ),
  20 => 
  array (
    'name' => 'empresa29',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '28_',
  ),
  21 => 
  array (
    'name' => 'empresa30',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '29_',
  ),
  22 => 
  array (
    'name' => 'empresa31',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '30_',
  ),
  23 => 
  array (
    'name' => 'empresa32',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '31_',
  ),
  24 => 
  array (
    'name' => 'empresa34',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '32_',
  ),
  25 => 
  array (
    'name' => 'empresa35',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '33_',
  ),
  26 => 
  array (
    'name' => 'empresa36',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '34_',
  ),
  27 => 
  array (
    'name' => 'empresa37',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '35_',
  ),
  28 => 
  array (
    'name' => 'empresa38',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '36_',
  ),
  29 => 
  array (
    'name' => 'empresa39',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '37_',
  ),
  30 => 
  array (
    'name' => 'empresa40',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '38_',
  ),
  31 => 
  array (
    'name' => 'empresa41',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '39_',
  ),
  32 => 
  array (
    'name' => 'empresa42',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '40_',
  ),
  33 => 
  array (
    'name' => 'empresa43',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '41_',
  ),
  34 => 
  array (
    'name' => 'empresa44',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '42_',
  ),
  35 => 
  array (
    'name' => 'empresa45',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '43_',
  ),
  36 => 
  array (
    'name' => 'empresa46',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '44_',
  ),
  37 => 
  array (
    'name' => 'empresa27',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '45_',
  ),
  38 => 
  array (
    'name' => 'empresa33',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '46_',
  ),
);
