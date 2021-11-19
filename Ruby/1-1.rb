# メソッドの定義
def add(a, b)
    # rubyでは、最後に評価された四季が戻り値となる
   a + b
end
puts add(38, 45)

# 引数のないメソッドは、()を省略可能
def greeting
    puts "hello"
end
greeting