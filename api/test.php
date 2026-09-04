<?php

header('Content-Type: application/json; charset=utf-8');

echo json_encode([
    'success' => true,
    'php' => PHP_VERSION,
    'pdo_pgsql' => extension_loaded('pdo_pgsql'),
]);