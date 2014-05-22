# -*- coding: utf-8 -*-
=begin
print "helloworld" "world"
puts "hello world, again" #puts 改行も含む
p "hello world 3"

x = 10
p x

#英小文字か_で始まる
#予約語(endとか)はなし
#定数は全部大文字！変更しちゃだめ！

# オブジェクト:便利な命令がつまったデータ型
# メソッド:便利な命令

p "hello".length #.lengthは文字数


# クラス:設計図
# インスタンス:実体化されたデータ

# 数値的なオブジェクト

x = Rational(2, 3)

# 演算子:+ - * / %(あまり) **(べき乗)

puts x

y = Rational(2, 3) + Rational(5, 6)

puts y


# 型変換

p 10.5.to_i #.to_i 整数表示

p 10.5.to_r #.to_i 分数表示

p 10.8.round #四捨五入

p rand(100) #乱数

p Math.sqrt(2)


# 文字列オブジェクト

x = "hello" # 変数や特殊文字を展開
y = 'hello' # 展開しない

puts "hello\nworld"
puts 'hello\nworld'

puts "こんにちは"


p "hello".length

p "hello".upcase

p "hello".reverse

p "hello".index("o")

p "hello".include?("w")

# 破壊的メソッド

s = "hello"

s1 = s.upcase!

p s
p s1


# 配列オブジェクト


# 配列オブジェクトの演算

a = [1, 2, 3, 4]

b = [3, 4, 5, 6]

# & | - +

p a & b #共通集合

p a | b #和集合

p a - b #aからbをひいたもの

p a + b #重複構わず

# 配列オブジェクトのメソッド

a = [1, 5, 4, 3, 5, 4, 8]

p a.uniq

p a.sort

#先頭と末尾
# unshift / push 追加
# shift / pop 削除

p a.push(10)

# ハッシュオブジェクト(連想配列)

# sales = [100, 150, 300]

sales = {"tanaka"=>100, "taguchi"=>150, "taniguchi"=>300}

p sales["tanaka"]

# ハッシュオブジェクトのメソッド

p sales.size #要素の数

p sales.empty?

p sales.has_key?("nakamura")

p sales.has_value?(222)


# 日付時間

# t = Time.now


# p t.month

t = Time.mktime(2011, 2, 24, 9, 0, 0)

p t + 10

p t.strftime("%y/%m/%d")


x = "taguchi"
y = 25

printf("%s's score is %d\n",x ,y)

printf("%-10s's score is %08d\n",x ,y)

z = sprintf("%-10s's score is %08d\n",x ,y)

p z


# 条件分岐(if)

score = 62

if score >= 80 then
  puts "great!"
elsif score >= 60
  puts "so so..."
else
  puts "not so great"
end

puts "great" if score >= 80

# 条件演算子 if ... else ...
# (条件) ? 値1 : 値2

a = 50
b = 20

max = a > b ? a : b


# 比較演算子

# < > >= <=
# ==(～と等しい) !=(～と等しくない)
# =~

puts "match!" if /taguchi/ =~ "my name is taguchi"

# && ||

# if x >= 1 && <= 10

# end


#case文

signal = "yellow"

case signal
when "red"
  puts "stop!"
when "green" , "blue"
  puts "go!"
when "yellow"
  puts "caution!"
else
  puts "signal is broken"
end


# 繰り返し処理

# times

10.times do |i|
  puts "#{i} hi!"
end

users = ["taguchi", "fkoji", "dotinstall"]

for user in users do
  puts user
end


users.each do |user|
  puts user
end

for i in 1..10 do
  puts i
end

scores = {"taguchi"=>200, "fkoji"=>300, "dotinstall"=>120}

scores.each do |name, score|
  printf("%s's score is %d\n", name ,score)
end


# 繰り返しのwhile使うよー


i = 1
while i < 10 do
  puts i
  #i = i + 1
  i += 1
end
=end

# メソッド
=begin
def sing(word = "la") #引数
  puts word + word + word + "~"
end

sing()
sing("hu")



def sing(word = "la", num)
  s = ""
  for i in 1..num do
    s += word
  end
  s += "~"
  return s
end

res =  sing("hu",10)

puts res

=end


#クラス

=begin
class Monster

  def initialize(name)
    @name = name
    @hp = 100 + rand(100)
    printf("%s appeared. His hp is %d\n", @name, @hp)
  end

  def damage
    @hp -= 10 + rand(10)
    printf("%s's hp is now %d\n", @name, @hp)
    printf("%s is now dead!\n", @name) if @hp < 0
  end

  def heal
    @hp += 10 + rand(10)
    printf("%s's hp is now %d\n", @name, @hp)
  end

end

slime = Monster.new("slime")

slime.damage
slime.damage
slime.damage
slime.damage
slime.damage
slime.damage
slime.damage
slime.damage
slime.damage
slime.damage
slime.damage

mummy = Monster.new("mummy")
=end

c = Array.new

for i in 0..7
c[i] = 0
end

for i in 0..7
c[i] = c[i] | 2**i
  printf "%b",c[i]
c[i] = c[i] | 2**(7-i)
  printf "%b\n",c[i]
end
