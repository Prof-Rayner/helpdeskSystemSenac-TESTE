<?php


return [
    'host'     => 'ep-green-night-acel3qx9-pooler.sa-east-1.aws.neon.tech',
    'port'     => 5432,
    'dbname'   => 'neondb',
    'user'     => getenv("PGUSER") ?? '',
    'password' => getenv("PGPASSWORD") ?? '',
];

?>