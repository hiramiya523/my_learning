<?php

namespace test;

class SampleGrammarClass
{
    const TAX = 0.1;
    public $test = 'こんにちは、';
    protected $name;

    // コンストラクタ
    function __construct($n){
        $this->name =  $n;
    }

    // 関数の定義
    function greeting(){
        echo $this->test . $this->name . "さん!!";
    }

    // デバッグ用
    function vd($a){
        var_dump($a);
        echo "</br>";
    }

    //　比較演算
    function comparisonOperation(){
        // true: キャストしてから比較される。
        echo var_dump(1 == "01");
        echo "</br>";

        // false : 型が異なる
        var_dump(1 === "1");
        echo "</br>";

        // 比較結果によって数値を返す
        // -1, 0, 1
        echo 10 <=> 15;
        echo ", ";
        echo 10 <=> 10;
        echo ", ";
        echo 15 <=> 10;
        echo "</br>";
    }

    // 配列
    function arrayFunc(){
        // 添付配列：キーが整数
        print_r("添付配列");
        $members = ['alex', 'bob', 'mike'];
        var_dump($members);

        echo "</br>";

        // 連想配列: キーが整数以外
        $members = [
            'Alex' => 23,
            'Bob' => 53,
            'Mike' =>3
        ];
        self::vd($members);
    }

    // 条件分岐
    function conditionalBranch(int $age){
        if($age < 20){
            self::vd("あなたは未成年ね。") ;
        }else{
            echo "おっとなぁ";
        }
    }

}
