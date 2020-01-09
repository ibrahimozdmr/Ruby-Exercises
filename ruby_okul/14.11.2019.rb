dizi = (1..10).to_a
dizi.each do |e|
    p e
end


dizi.each { |e|
    p e
}


dizi.each {|e| p e}


dizi = (1..100).to_a
toplam = 0
dizi.each do |e|
    toplam += e
end
puts "dizinin elmanlarının toplamı #{toplam}"
puts "dizinin ortalaması #{toplam.to_f/dizi.size}"


def baz dizi
    dizi.each_with_index do |e, i|
        puts "eleman #{e}, dizi #{i}"
    end
    ' ' #eğer yazılmazsa dizinin kendisini döndürecek
end
dizim = ('a'..'f').to_a
p baz dizim


a = %w(hava su toprak ates kus agac duvar mASA)
p a
p a.map {|e| e.capitalize} # kalıcı bir değişiklik yapmıyor
#p a = a.map {|e| e.capitalize} # eğer üstteki işlemi bir değişkene eşitlersem kalıcı değişiklik yapar 
#p a.map! {|e| e.capitalize} #başka bir yöntem map'in yanına ! bırakırsam kalıcı değişiklik yapar
p a


def foo arr
    arr.map do |x|
        (x > 10)? x+1 : x-1
    end
end
dizi = [10, 5, 43, 4]
p foo dizi


a = %w(hakan mehmet eyup ayse fatma cagri mustafa sErhat kıvanc)
p a.select {|e| e.include? "e"}
p a.select {|e| (e.include? "e") || (e.include? "E")}


#önceden çift sayıları alan bir method yazmıştık. Bunu select ile yapabiliriz.
sayilardizi = [1,2,3,4,5,6,7,8,9]
puts "sayilardizi'sinde cift olanlar: #{sayilardizi.select {|e| e.even?}}"
