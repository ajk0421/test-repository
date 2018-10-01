require "./menu"

menu1 = Menu.new(name: "醤油ラーメン", price: 700)
menu2 = Menu.new(name: "塩ラーメン", price: 700)
menu3 = Menu.new(name: "味噌ラーメン", price: 800)
menu4 = Menu.new(name: "毛ガニラーメン", price: 1200)

menus = [menu1,menu2,menu3,menu4]

index = 0
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index += 1
end

puts "---------------------"
puts "何番にします？？"

order = gets.chomp.to_i

selected_menu = menus[order]

puts"#{selected_menu.name}でいいかい？？"

puts "何杯食べる？？なんと3杯食べたら１００円引き！"

count = gets.chomp.to_i

puts "お会計#{selected_menu.get_total_price(count)}です！"
puts "毎度ありがとう！また来てね！"
puts "次は大盛りで！"
