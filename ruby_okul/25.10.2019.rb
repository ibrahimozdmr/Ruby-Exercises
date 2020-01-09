def tekmi? sayi
    sayi % 2 != 0
end
def foo sayi1 , sayi2
    if !tekmi?(sayi1) && !tekmi?(sayi2)
        sayi1 + sayi2
    else
        sayi1 - sayi2
    end
end
p foo 6, 4# sonuç 10 çıkacak
p foo 3, 6# sonuç -3
p foo 3, 5#sonuç -2
p tekmi? 5# True


def foo bar
    puts 2 * bar + 1 # 2 katinın bir fazlası
end


def islem sayi1, sayi2, islem
    if islem == "+"
        sayi1 + sayi2
    elsif islem == "-"
        sayi1 - sayi2
    elsif islem == "*"
        sayi1 * sayi2
    elsif islem == "/"
        sayi1.to_f / sayi2
    else
        "seçtiğiniz işlem mevcut değil"
    end
end
p islem 6 , 8 , "+"
p islem 6 , 8 , "-"
p islem 6 , 8 , "*"
p islem 6 , 8 , "/"


def çift? sayi = 1
    sayi % 2 == 0
end
p çift?


def çift sayi = 3
    sayi.even?
end
p çift


def test a1 = "Ruby", a2 = "Python"
    "#{a1} ve #{a2} programlama dillerini biliyorum."
end
p test
puts test "java", "C"


def test #bu test fonksiyonu ekrana ne basar? ***
    a= 1
    b= 2
    c= 3
end
p test


def calculate_value(x,y, *otherValues)
    otherValues
end
p calculate_value 1,2,'a','b','c'


def cift ogrenci_no
    ogrenci_no.even?
end
def lab_grub ogrenci_no
    if cift ogrenci_no
        "persembe"
    else
        "sali"
    end
end
p lab_grub 18061276
p lab_grub 18061275

#ilk ders upcase downcase falan revers
#ascii koduna döndürenler
a = 5 #türü ne
p a.class
p "halil".class