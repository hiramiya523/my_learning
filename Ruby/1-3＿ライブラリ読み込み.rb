# 組み込みライブラリではない、標準ライブラリを使う
require 'date'

puts Date.today

# puts p print で出力の挙動が異なる
a = [1,2,3]
puts a
p a
print a