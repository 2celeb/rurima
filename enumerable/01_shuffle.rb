# -*- coding: utf-8 -*-
# テーマ：与えられた配列を適当に並べ替えて２分割してください。
# 用途　：チームで昼飯を食いに行く会の組み合わせを決める
# 　　　　→あまり人数が多いと店に入れないので、
# 　　　　　10人前後の参加者をランダムに２組に分けたい


members = %w(2celeb kwappa cesare okitan do-aki lchin erukiti kazuhomasago todesking tyabe)
first, second = members.shuffle.each_slice((members.size / 2).ceil + 1).to_a

p first
p second

User = Struct.new(:name, :nikuchi)
members = %w(2celeb kwappa cesare okitan do-aki lchin erukiti kazuhomasago todesking tyabe)\
  .map {|name| User.new(name, name.each_byte.inject(0)\
     {|value, result|result += value.to_i} % 29)}


first, second =  members.sort {|l, r|l.nikuchi <=> r.nikuchi}.map(&:name)\
  .each_slice((members.size / 2).ceil + 1).to_a

p first
p second








