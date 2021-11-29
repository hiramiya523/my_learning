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

#ヒアドキュメントは１つの式なので、
# 引数で渡せたり、メソッドを呼び出せたりする。
a = "Ruby"
a.prepend(<<TEst)
Java
PHP
TEst

puts a
puts <<TEXT.upcase
helloo.
good-Bye
TEXT

# unless
status = "error"
unless status == 'ok'
    'なにか以上があります'
else
    '正常です。'
end

# case
country = 'italy'
case country
when 'japan'
    'こんにちは'
when 'US'
    'Hello'
when 'italy'
    puts 'ciao'
else
    '???'
end

# rubyは式全体の真偽が確定するまで、左から右へと評価する。
# 制御フローで用いられる
puts 1 && 2 && 3 # =>3
puts 1 && nil && 3 # =>nil
puts false && 2 && 3 # =>false

puts nil || false # =>false
puts false || nil # =>nil
puts false || nil || 2 || 3 # =>2 (2の時点で、真が確定)


# 三項演算子
