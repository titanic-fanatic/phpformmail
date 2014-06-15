<?php

// To change the address the e-mail comes from use define('FROM', 'Example Name <email@example.com>');
define('FROM', NULL);

$referers = array('phpformmail.dev', 'localhost');

// $recipient_array format is $recipient_array = array('sometext'=>'email@example.com','asdf'=>'email2@example.com');
$recipient_array = array();

$valid_env = array(
  'REMOTE_HOST',
  'REMOTE_ADDR',
  'REMOTE_USER',
  'HTTP_USER_AGENT'
);

require '../../../../src/formprocessor.php';
