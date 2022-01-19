# ユーザクラスを定義、大文字スタート
# レシーバーなんて言われ方もする
class User
    # 読み取り専用、getterのみ
    attr_reader :first_name, :last_name, :age # 属性、アトリビュートと言われる
    # 書き込み専用
    attr_writer
    # アクセサリメソッドが自動的に定義される
    attr_accessor :motivation

    # コンストラクタてきな、外部から呼び出し不可
    def initialize(first_name, last_name, age, from)
        # インスタンス変数は@で定義する
        @first_name = first_name
        @last_name = last_name
        @age = age
        @from = from
    end

    # インスタンスに含まれるデータを使わないメソッド
    # クラスメソッド
    class << self
        def clas_method
            #しょり
        end
    end

    # インスタンスメソッド
    def full_name
        "氏名：#{@first_name} #{@last_name}, 年齢：#{@age}"
    end

    # アクセサリメソッド（ゲッター、セッター
    # 参照よう
    def from
        @from
    end
    # 変更用、せった
    def from=(value)
        @from = value
    end

end

#ユーザデータ作成
users = []
# 要素追加
users << User.new("alis", "ungera", 21, "japan")
users << User.new("bob", "tanaka", 4, "japan")

# users.[0].initialize は呼び出せない

# ユーザデータ表示
users.each do |user|
    puts user.full_name
    puts "age: #{user.age}" # attr_reader で定義しているので呼び出せる
    puts "from: #{user.from}" # def fromで呼び出し
    user.from = "US"
end

# 上記アトリビュート更新確認
users.each do |user|
    puts "変更後：#{user.from}"
end


puts "--------------------------------------"
# クラスメソッド確認
class User2
    def initialize(name)
        @name = name
    end

    # クラスメソッドの一括定義
    class << self
        def create_users(names)
            names.map do |name|
                User2.new(name)
            end
        end
    end

    # インスタンスメソッド
    def hello
        "Hello, I am  #{@name}"
    end

end

# クラスメソッドの呼び出し
names = ["ai", "tenga", "ori"]
users2 = User2.create_users(names)
# インスタンスメソッドの呼び出し
users2.each do |user|
    puts user.hello
end

puts "--------------------------------------"

# クラスでの、定数の定義
class Product
    # デフォルトの価格を定数
    # 必ず、大文字から
    DEFAULT_PRICE = 0

    attr_reader :name, :price

    def initialize(name, price = DEFAULT_PRICE)
        @name = name
        @price = price
    end
end

# デフォルトの定数利用
pd = Product.new('A free movie')
puts "#{pd.name}の値段は#{pd.price}円"
pd2 = Product.new('movie', 200)
puts "#{pd2.name}の値段は#{pd2.price}円"
