# Rubyは単一継承、スーパークラスは１つだけ
# デフォルトでobjectクラスを継承するため、to_s,nil?メソッドを使える
class Test
end

test = Test.new
puts test.to_s
puts test.nil?

# スーパークラス確認
puts Test.superclass

puts "############################################"
# オブジェクトのクラスを確認するのはclassメソッド or instance_of?
puts test.class
puts test.instance_of?(Test)
puts "############################################"

# is-a関係にあるか確認
puts test.is_a?(BasicObject)
puts "############################################"

# 継承してみる
class Product
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    # objectから、オーバーライド
    def to_s
        "name: #{name}, price: #{price}"
    end
end

class Dvd < Product
    attr_reader :running_time

    def initialize(name, price, running_time)
        # スーパークラスの、同名メソッドを呼び出す
        super(name, price)
        @running_time = running_time
    end

    # Productから、オーバーライド
    def to_s
        "#{super}, running_time: #{running_time}"
    end
end

puts "スーパークラスは、#{Dvd.superclass}"

dvd = Dvd.new("A great movie", 1000, 120)
puts dvd.name
puts dvd.price
puts dvd.running_time
puts "############################################"
puts "オーバーライド"
puts Product.new("aaa", 300).to_s
puts dvd.to_s