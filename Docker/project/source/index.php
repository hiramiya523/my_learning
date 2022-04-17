<?php
// echo phpinfo();

// docker-compose.ymlのMySQLのコンテナで定義したホスト名（mysql）
const HOSTNAME = 'mysql';
const DATABASE = 'my_db';
const USERNAME = 'phper';
const PASSWORD = 'password';


try{
    # phpのコンテナにインストールしたpdo_mysqlでデータベースに接続する
    $pdo = new PDO('mysql:host=' . HOSTNAME . ';dbname=' . DATABASE, USERNAME, PASSWORD);
    $msg = 'MySQLに接続成功！';
}catch(PDOException $e){
    $msg  = 'MySQLへの接続失敗...<br>' . $e->getMessage();
}

echo $msg;

?>
