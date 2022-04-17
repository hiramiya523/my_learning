<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!-- 短縮構文 -->
    今日は<?= date('Y年m月d日') ?>です。</br>

    <?php
        $var = 'World';
        // 文字列結合
        echo '文字列結合: ' . 'Hello' . ' ' . $var . '</br>';
        // 変数展開(ダブルクォートだとエスケープシーケンスも展開)
        echo "変数展開:\t{$var}\n"
    ?>
</body>
</html>
