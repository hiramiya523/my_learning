# selfはインスタンス自信を表す
class User
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    ### 呼び出し ###
    # selfなし
    def hello
        "Hello, I am #{name}"
    end

    # self付き
    def hi
        "Hello, I am #{self.name}"
    end

    # インスタンス変数に直接fアクセス
    def my_name
        "Hello, I am #{@name}"
    end

    ### 更新 ###
    # selfなしだと、インスタンス変数を更新できない
    def rename_to_bob
        name = "Bob"
    end

    # 更新できる
    def rename_to_mika
        self.name = "mika"
    end

    # 直接指定でもいける
    def rename_to_aki
        @name = "aki"
    end

end

# 呼び出し
user = User.new("kai")
puts user.hello
puts user.hi
puts user.my_name
puts "------------------------------------------------------"
# インスタンス変数更新
user.rename_to_mika
puts user.hi
user.rename_to_aki
puts user.hi
user.rename_to_bob # 更新できない
puts user.hi