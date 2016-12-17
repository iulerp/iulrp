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

$tb_pref_counter = 82;

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
    'tbpref' => '49_',
  ),
  2 => 
  array (
    'name' => 'empresa02',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '50_',
  ),
  3 => 
  array (
    'name' => 'empresa03',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '51_',
  ),
  4 => 
  array (
    'name' => 'empresa04',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '52_',
  ),
  5 => 
  array (
    'name' => 'empresa05',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '53_',
  ),
  6 => 
  array (
    'name' => 'empresa06',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '54_',
  ),
  7 => 
  array (
    'name' => 'empresa07',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '55_',
  ),
  8 => 
  array (
    'name' => 'empresa08',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '56_',
  ),
  9 => 
  array (
    'name' => 'empresa09',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '57_',
  ),
  10 => 
  array (
    'name' => 'empresa10',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '58_',
  ),
  11 => 
  array (
    'name' => 'empresa11',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '59_',
  ),
  12 => 
  array (
    'name' => 'empresa12',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '60_',
  ),
  13 => 
  array (
    'name' => 'empresa13',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '61_',
  ),
  14 => 
  array (
    'name' => 'empresa14',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '62_',
  ),
  15 => 
  array (
    'name' => 'empresa15',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '63_',
  ),
  16 => 
  array (
    'name' => 'empresa16',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '64_',
  ),
  17 => 
  array (
    'name' => 'empresa17',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '65_',
  ),
  18 => 
  array (
    'name' => 'empresa18',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '66_',
  ),
  19 => 
  array (
    'name' => 'empresa19',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '67_',
  ),
  20 => 
  array (
    'name' => 'empresa20',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '68_',
  ),
  21 => 
  array (
    'name' => 'empresa21',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '69_',
  ),
  22 => 
  array (
    'name' => 'empresa22',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '70_',
  ),
  23 => 
  array (
    'name' => 'empresa23',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '71_',
  ),
  24 => 
  array (
    'name' => 'empresa24',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '72_',
  ),
  25 => 
  array (
    'name' => 'empresa25',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '73_',
  ),
  26 => 
  array (
    'name' => 'empresa26',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '74_',
  ),
  27 => 
  array (
    'name' => 'empresa27',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '75_',
  ),
  28 => 
  array (
    'name' => 'empresa28',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '76_',
  ),
  29 => 
  array (
    'name' => 'empresa29',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '77_',
  ),
  30 => 
  array (
    'name' => 'empresa30',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '78_',
  ),
  31 => 
  array (
    'name' => 'empresa31',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '79_',
  ),
  32 => 
  array (
    'name' => 'ttt',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '80_',
  ),
  33 => 
  array (
    'name' => 'ttt',
    'host' => 'localhost',
    'dbuser' => 'iultechc_fron200',
    'dbpassword' => '(47EP.6S3p',
    'dbname' => 'iultechc_fron200',
    'collation' => 'utf8_xx',
    'tbpref' => '81_',
  ),
);
