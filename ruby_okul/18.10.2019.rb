print "bir sayı giriniz: "
sayi = gets.chomp.to_i
puts "sayı çifttir." if sayi % 2 == 0
puts "sayı tektir." unless sayi % 2 == 0


print "bir sayı giriniz: "
sayi = gets.chomp.to_i
puts sayi % 2 == 0 ? "Sayı çifttir." : "Sayı tektir."


if -1
    puts "Ruby"
else
    puts "Java"
end


print "Sayı notunuzu giriniz: "
sayi_notu = gets.chomp.to_i
if sayi_notu >= 90
    puts "AA"
elsif sayi_notu >= 80 && sayi_notu < 90
    puts "AB"
elsif sayi_notu >= 70 && sayi_notu < 80
    print "BB"
elsif sayi_notu >= 60 && sayi_notu < 70
    print "BC"
elsif sayi_notu >= 50 && sayi_notu < 60
    print "CC"
else
    print "FF"
end
puts


$yas = 15
case $yas
when 0 .. 2
    puts "bebek"
when 3 .. 6
    puts "küçük çocuk"
when 7 .. 12
    puts "çocuk"
when 13 .. 18
    puts "yetişkin"
end


print "Sayi notu giriniz: "
sayi = notunuz = gets.chomp.to_i
sayi = if sayi_notu >= 90
    "AA"
elsif sayi_notu >= 80 && sayi_notu < 90
    "AB"
elsif sayi_notu >= 70 && sayi_notu < 80
    "BB"
elsif sayi_notu >= 60 && sayi_notu < 70
    "BC"
elsif sayi_notu >= 50 && sayi_notu < 60
    "CC"
else
    "FF"
end
puts sayi