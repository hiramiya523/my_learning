# 関数のデフォルト引数
# デフォルト引数の有無は混在させられる
def greeting(country = 'japan')
    if country == 'japan'
        p 'こんにちは'
    else
        p 'hello'
    end
end

# 引数なし
greeting
# 引数丁度
greeting('us')

#  デフォルト引数は、動的に変わる値や、メソッドなど指定ができる
def foo(time = Time.now, message = bar)
    puts "time: #{time}, message: #{message}"
end

def bar
    'BAR'
end

foo

# ?で終わるメソッドは真偽値を返し、
# !で終わるメソッドは呼び出したオブジェクトを変更する必要がある破壊的メソッド
a = 'abc'
puts a.empty?
a.upcase!
puts a

# statement(文)
# rubyでは、ifやメソッド定義は値を返す
s =
if true
        '真です'
end
puts s