# 概要
php, nginx, mysqlの環境構築練習

# 操作
#コンテナ起動  
-dは、バックグラウンドで起動  
--buildはDockerfileよりイメージをつくるということ  

docker compose up --build -d

#コンテナ終了  
docker compose down  

#再起動  
docker compose up -d  

#起動確認  
docker compose ps  

<br>  

# note
PHPには、モジュール版とCGI(Common Gateway Interface)版がある。
