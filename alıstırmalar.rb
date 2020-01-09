#girilen rengin renkler dizisinde olup olmadığı
renkler = ["Red", "Green", "Blue", "White"]
print "Renk giriniz: "
girilen = gets.chomp.to_s
print renkler.include? girilen


#bir dizide ilk veya son karakteri 7 olup olmadığına bakma
def ilkveson? dizi
    dizi.first == 7 || dizi.last == 7
end
sayilar = [2,3,5,7,9,0,7]
sayilar1 = [7,23243,76,4,44,4,4,444]
sayilar2 = [2,3,4,5,6,7,8,9,0]
p ilkveson sayilar
p ilkveson sayilar1
p ilkveson sayilar2


#diziden rastgele sayı çekme
sayilar = [15,22,56,4567,434,67,46,1243,56,43,56]
p sayilar
print "diziden kaç sayı istersiniz: "
girilen = gets.chomp.to_i
i = 0
cıktı = Array.new
while i < girilen
    rastgele = rand(sayilar.size)
    cıktı.push sayilar[rastgele-1]
    i +=1
end
p cıktı


#bir dizinin ilk ve son karakterinin aynı olup olmadığı ve dizide en az bir eleman olmasına bakma
def ilk_sonayni dizi
    dizi.size >= 1 && dizi.first == dizi.last #operatörler varsayılan olarak true yada false dönüyor
end
puts ilk_sonayni [5,6,7,8,9,5]
puts ilk_sonayni [3,4,5,67,3]
puts ilk_sonayni [43,3,4,5,6,7,3]


#dizideki sayıların toplamı
sayilar = [4,5,6,7,45,43,53,23]
p sayilar
print sayilar.sum()
#üstte olan ile alttaki aynı işlemi yapar
sayilar = [4,5,6,7,45,43,53,23]
p sayilar
toplam = 0
sayilar.each {|a| toplam += a}
p "Bu sayıların toplamı: " + toplam.to_s


#dizide aynı eleman olmayacak şekilde seçme
dizi = [1, 2, 3, 4, 1, 2, 2, 3, 5, 6]
p dizi
new_dizi = []
new_dizi.append dizi.first # .append yerine << yazılabilir aynı işlemi görüyor
for i in dizi do
    if !new_dizi.include? i
        new_dizi.append i
    end
end
p new_dizi


#elimizde iki dizi olsun. Bu dizilerin ilk ve son elemanları aynı olup olmadığına bakma
def ikidiziilksonayni dizi1,dizi2
    dizi1.size >= 1 && dizi2.size >= 1 && (dizi1.first == dizi2.first || dizi1.last == dizi2.last)
end
p ikidiziilksonayni [1, 2, 5], [7, 5]
p ikidiziilksonayni [1, 2, 3], [7, 3, 2]
p ikidiziilksonayni [1, 2, 4], [1, 4]


#bir dizinin elamanalrının boş veya dolu olduğuna bakma
renkler = ["Red", "Green", "", "Blue", "White"]
renkler.each do |a|
    renkler.delete a if a.empty? == true
end
p renkler


#bir dizinin elman sayısı 3'e eşit veya büyük ise elemanlarını topla
def toplama dizi
    if dizi.size >= 3
        toplam = dizi.sum
    else
        "diziniz 3 elemandan küçüktür. işlem yapılamaz. :D"
    end
end
p toplama [3,4]
p toplama [3,4,5,6,7,8]
p toplama [3,4,5]


#bir stringi bir şarta göre diziye çevirme
color = "Red, Green, Blue, White"
nums = "1, 3, 4, 5, 7"
color_array = color.split(", ")
nums_array = nums.split(", ").map {|a| a.to_i}
p color_array
p nums_array


#bir diziyi ters çevirme
def ters_cevirdizi dizi
    new_dizi = Array.new
    dizi.each do |eleman|
        new_dizi.unshift eleman
    end
    new_dizi
end
p ters_cevirdizi [1,2,3,4]


#bir dizide var ise ilk iki elmanı toplama
def ilk_iki dizi
    if dizi.size >= 2
        dizi[0] + dizi[1]
    elsif dizi.size == 1
        dizi[0]
    else dizi.size == 0
        0
    end
end
p ilk_iki [1,2]
p ilk_iki [3,4,5,6,7]
p ilk_iki [1]
p ilk_iki []

