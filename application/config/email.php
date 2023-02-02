<?php
/* application/config/email.php */
if ( ! defined('BASEPATH')) exit('No direct script access allowed');


/*

	SendGrid Setup
|--------------------------------------------------------------------------
|
| All we have to do is configure CodeIgniter to send using the SendGrid
| SMTP relay:
*/
$config['protocol']	= 'smtp';
$config['smtp_port']	= '587';
$config['smtp_host']	= 'smtp.sendgrid.net';
$config['smtp_user']	= 'WINLAXY';
$config['smtp_pass']	= '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';
$config['wordwrap'] = true;
$config['mailtype'] = 'html';
