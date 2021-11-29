# fizzbuzz
def fizz_buzz(n)
    if n % 15 == 0
        "FizzBuzz!"
    elsif n % 3 == 0
        "Fizz"
    elsif n % 5 == 0
        "buzz"
    else
        n.to_s
    end
end
puts fizz_buzz(30)
puts fizz_buzz(3)
puts fizz_buzz(5)
puts fizz_buzz(4)

# 文字列はStringクラスのオブジェクト
puts "ya".class

# %記法で、エスケープ文字を使わない
puts %q!He said, "Don't speak."!
# 区切り文字は!でなくとも良い
puts %Q{"Bye."}

name = 'Ailce'
# ヒアドキュメント
a = <<test
これはヒアドキュメントです。
複数行に渡る長い文字列を作成するのに便利です。
文字展開も有効です。名前は#{name}
test
puts a