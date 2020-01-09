#asalmi methodu oluşturma
def asalmi? sayi
    i = 1
    sayac = 0
    while i <= sayi
        sayac += 1 if sayi % i == 0
        i += 1
    end
    sayac == 2
end
p asalmi? 6
p asalmi? 5


#bir dizinin modunu bulma birden fazla ise ikisinide ekrana bastır
def enbuyuk_bul h
    enbuyuk_sayi = 0
    h.each do |key, value|
        enbuyuk_sayi = key if value > enbuyuk_sayi
    end
    enbuyuk_sayi
end
def modbulma dizi
    hash = Hash.new
    dizi.each do |eleman|
        if !hash.include? eleman
            hash[eleman] = 1
        else
            hash[eleman] += 1
        end
    end
    hash
end
sayilar = [1,1,2,2,3,4,5,6,6,6,6,7,7,7,7,8,9,9]
hashim = modbulma sayilar
hashim.each do |key,value|
    p "#{key} sayisi dizide #{value} defa gecmektedir."
end
p hashim
p enbuyuk_bul hashim


# Bir dizide çift sayıları bulup bunların arasındaki en büyük sayıyı bulup bu sayının karesini ekrana bastır
a = (1..50).to_a
ciftler = a.select {|e| e % 2 == 0}
enbuyuk = 0
ciftler.each do |sayi|
    enbuyuk = sayi if enbuyuk < sayi
end
puts enbuyuk ** 2

