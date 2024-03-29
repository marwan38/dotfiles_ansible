<?php

$config = new PhpCsFixer\Config();

return $config->setRules([
    '@PSR12'                                 => true,
    '@PhpCsFixer'                            => true,
    '@PHP80Migration'                        => true,
    '@PHP81Migration'                        => true,
    '@PHP82Migration'                        => true,
    'strict_param'                           => true,
    'array_syntax'                           => ['syntax' => 'short'],
    'binary_operator_spaces'                 => ['operators' => ['=>' => 'align']],
    'multiline_whitespace_before_semicolons' => ['strategy' => 'no_multi_line'],
])->setRiskyAllowed(true)->setCacheFile('/tmp/.php-cs-fixer.cache');
