# selfは場所によってクラス、インスタンスを表すかが変わる。
class Foo
    # クラス定義読み込み時に呼び出される
    puts "クラス構文直下self: #{self}"

    def self.bar
        "クラスメソッド内のself: #{self}"
    end

    # クラスメソッドは定義後であればクラス内部で呼び出せる。
    puts "クラス内からクラスメソッド呼び出し：#{self.bar}"

    def baz
        puts "インスタンスメソッド内のself: #{self}"
    end
end

# 最初にクラス構文直下のputs
# クラスメソッド
puts Foo.bar
# インスタンスメソッド
Foo.new.baz


puts "###########################"

# クラスメソッドをインスタンスメソッドから呼び出す。
class Product
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    # クラスメソッド
    class << self
        def format_price(price)
            "#{price}円"
        end
    end

    # インスタンスメソッドからクラスメソッドを呼び出す。
     def to_s
        formatted_price = Product.format_price(price)
        "name: #{name}, price: #{formatted_price}"
     end
end

pd = Product.new("A great movie", 1000)
puts pd.to_s