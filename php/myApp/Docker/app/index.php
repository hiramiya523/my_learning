<?php
    try {
        $dsn = 'mysql:host=mysql;dbname=first_db';
        $dbh = new PDO($dsn, 'user', 'pwd');

        $sql = 'SELECT version();';
        $contact = $dbh->prepare($sql);
        $contact->execute();
        $result = $contact->fetchAll(PDO::FETCH_ASSOC);
        var_dump($result);
    } catch (PDOException $e) {
        echo $e->getMessage();
        exit;
    }