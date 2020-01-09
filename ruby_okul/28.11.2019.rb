sozluk = {:bir => "one",:iki => "two", :uc => "three", :dort => "four"}
sozluk2 = {"bir" => "one", "iki" => "two", "üç" => "three", "dört" => "four"}
p sozluk[:bir]
p sozluk2["iki"]


a = ["b", "a"]
b = ["c", "d"]
hsh = {a => 100, b => 300}
puts hsh
p hsh.keys
puts hsh[a]
puts hsh[["b", "a"]]
puts hsh[b]
puts hsh[["c", "d"]]
a[0] = "v"
p a
hsh.rehash
puts hsh


h = {:foo => "bar"}
p h.to_a
p h.to_h

dizi = [["a", 1],["b", 2]]
p dizi
p dizi.to_h

#== ve eql? hash verilerinin eşit olup olmadığını kontrol eder.
h1 = {"a" => 100, "b" => 101}
h2 = {70 => 300, "x" => 20, "y" => 10}
h3 = {"y" => 10, "x" => 20, 70 => 300}
puts h1 == h2
puts h2 == h3
puts h1.eql?(h2)
puts h2.eql? h3


h1 = Hash.new
puts h1
h1.default = 100
puts h1[:ağırlık]
puts h1[:foo]


h = Hash.new(10)
puts h[:yas]
puts h
puts h.default


h = {:kullanıcı => "Ahmet", :sifre => "1234"}
puts h.key "Ahmet"
puts h.key("Ahmet")
p h.key "foo"
puts "\n"
puts h.size
puts h.count
puts h.length

h = {:kullanici => "admin", :sifre => "1234", :email => "aaa@mail.com"}
p h.keys
p h.values
p h.values_at :kullanici,:sifre
p h.values_at(:kullanici,:sifre)


h = {:kullanici => "admin", :sifre => "1234", :email => "aaa@mail.com"}
p h.key? :kullanici
p h.has_key? :sifre
p h.key? :isim
p h.has_key? :soyisim
p h.value? "admin"
p h.has_value? "Ahmet"
p h.value? "Veli"
p h.has_value? "Hacı"


h = {:kullanici => "admin", :sifre => "1234", :email => "aaa@mail.com"}
p h
h.shift#ilk çift silinir
p h
h.shift
p h
h.shift
p h


h = {:kullanici => "admin", :sifre => "1234", :email => "aaa@mail.com"}
h.delete :sifre
puts h
puts h.delete(:telefon) {|key| "#{key} bulunamadı"}


h3 = {nokta_1: 10, nokta_2: 20, nokta_3:30}
h3.delete_if {|k,v| v >= 20}
puts h3

h4 = {nokta_1: 10, nokta_2:20, nokta_3: 30}
h4.keep_if {|k,v| v <= 20}
puts h4


h = {"a" => 100, "b" => 150}
p h.keys
p h.invert.keys

h1 = {"a" => 100, "b" => 150}
h2 = {:x => 1, :y => 2, :z => 3}
puts h1
puts h1.merge(h2)
p h1
p h1.update h2 #merge! ile update burada kalıcı yapmayı sağlıyor
p h1.merge! h2
p h1


h = {"a" => 100, "b" => 200, "c" => 300}
h.each {|key, value| puts "key: #{key}, value: #{value}"}
h.each_pair {|key, value| puts "key: #{key}, value: #{value}"}
h.each_value {|value| puts "value: #{value}"}
h.each_key {|key| puts "key: #{key}"}


insan = {ismi: "ali", boyu: "170cm", kilosu: "70 kg", sac_rengi: "sarı"}
insan.each do |key, value|
    puts "Ali'nin #{key} #{value} dir."
end


def merhaba(isim,ozellik = {})
    if ozellik.empty?
        puts "Merhaba, benim adım #{isim}"
    else
        puts "Merhaba, benim adım #{isim} ve #{ozellik[:yas]} yaşındayım."
    end
end
merhaba "Ahmet"
merhaba "Ahmet", {yas: 33, sehir: "Samsun"}


dizi = [1,2,"Merhaba", false]
hash = {"merhaba" => "dünya", true => "true", 35 => "yolun yarısı", "Ahmet" => "Ahmet"}
dizi.each {|value| puts value}
puts "\n"
hash.each {|key, value| puts "Anahtar = #{key} -- Değer = #{value}"}


hash = Hash[]
althash = Hash[]
althash["pati"] = 4
althash["renk"] = "turuncu"
hash["kedi"] = althash
althash2 = Hash[]
althash2["kuyruk"] = 1
althash2["kulak"] = 2
hash["köpek"] = althash2
puts hash["kedi"]
puts hash["köpek"]
puts hash
puts hash["kedi"]["pati"]
puts hash["köpek"]["kulak"]