a = nil  # 変数宣言時は何かしらの値を代入しなければ
a = "hello world"
puts a

# オブジェクトを文字列化するメソッド
puts 100.to_s # オブジェクト.メソッド
puts nil.to_s # 引数がない場合、メソッドの名前だけでもおｋ
puts true.to_s()
puts 10.to_s 16 # 数値を16進数の文字列に変換

=begin
複数行のコメント
数値の123、文字列の"hello"などソースコードに直接埋め込むことができる値を
リテラルという。
=end

# ""と''ではエスケープ文字系の挙動が異なる
puts "こん\nにち"
puts 'こん\nにち'

# nilは偽と同じ判定で、nil,false以外の値は全て真
if !nil then
    puts "nilはfalseと同じ判定"
end

# データの存在有無で以下のようにかける
data = 1;
if data
    puts "データがあります"
else
    puts 'データがありません。'
end