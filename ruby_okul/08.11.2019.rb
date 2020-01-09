a = [1,2,3,4,5,6,7,8,"a","b"]
p a.first == a[0]
p a.last == a[a.size-1]
p a[5]

=begin
---while kuralı---
while koşul
    işlemler
end
=end

i = 0
while i < 30
    print i
    print "\n"
    i += 1
end


liste = %w(a b c d e f g h i j k l m n o p r s t u v y z)
a = 0
while a < liste.size
    p liste[a]
    a += 1
end


dizi = [1,2,3,4,5]
i = 0
adet = 0
while i < dizi.size
    if dizi[i].even?
        adet += 1
    end
    i += 1
end
puts adet #kaç tane çift sayı olduğunu gösterir.
#üsttekini fonksiyon şeklinde yaparsak
def sonuc dizi
    i = 0
    adet = 0
    while i < dizi.size
        adet += 1 if dizi[i].odd?
        i += 1
    end
    adet
end
dizi = [1,2,3,4,5]
p sonuc dizi


a = (1..10).to_a#liste oluşturmada kısa yol
print a
print "\n"
print "\n"
b = ("a".."z").to_a
print b
print "\n"
print "\n"


a = (1..10).to_a
b = ("a".."z").to_a
i = 0
while i < b.size
    a << b[i]  # buradaki "<<" işaret yerine .push metodu yazılırsa aynı işlemi verir.
    i += 1
end
p a 

a = (1..10).to_a
b = ("a".."z").to_a
while i < b.size
    a.push b[i]
    i += 1
end
p a 
i = 0
a = (1..10).to_a
b = ("a".."z").to_a
while i < b.size
    a.unshift b[i]
    i += 1
end
p a 

liste2 = [1,2,3,4,5,6,7]
liste2.shift#ilk karakter
liste2.pop#sonkarakter
liste2.delete 4#seçilen karakter
p liste2
p liste2.include? 5#içeriyor mu
p liste2.empty?#boş mu olduğunu sorguluyor
p liste2