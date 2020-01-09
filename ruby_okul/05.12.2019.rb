# ENUMERABLE METHOD

puts %W(agac halil ev gol).all?{|kelime| kelime.size >= 3}
#yada
dizi = %w(kale veba ağaç sela fare)
puts dizi.all?{|kelime| kelime.size == 4}


p [].all?#herhangi bir koşu yok ve içi boş olduğundan tru döndürüyor

p [nil, 0].all?


p %w(ant bear cat).all? /t/
#yada
p %w(ant bear cat).all?(/t/)


p [1, 2i, 3.14].all?(Numeric)


enu =  [10,19,18]
res = enu.all? {|num| num > 15}
p res


[].all? 
[].all? {|s| s.size == 1}
#içi boş bir dizi all ile her hangi bir işleme tabi tutulursa true döner


p %w[ant bear cat].any? { |word| word.length >= 3 }

p %w[ant bea cat].any? { |word| word.length >= 4 }#any işlemi dizi içinde en az bir şey için doğru olursa true döner.


p [nil, true, 99].any?(Integer)#içinde bir sayı varsa true olur


enu1 = [10,19,18]
res = enu1.any?{|a| a > 13}
p res


#find = detect
p (1..10).detect{|i| i % 5 == 0 and i % 7 == 0}
p (1..10).detect{|i| i % 5 == 0 || i % 7 == 0}
p (1..35).detect{|i| i % 5 == 0 && i % 7 == 0}
p (1..10).find{|i| i % 5 == 0 and i % 7 == 0}


#select = find_all
p [1,2,3,4,5].select{|a| a.even?}
p [1,2,3,4,5].find_all{|b| b.odd?}

p (1..50).find_all{|sayi| sayi % 2 == 0 && sayi % 9 == 0}


#one
meyveler = %w(elma armut muz)
p meyveler.one? {|e| e.size > 3}
p meyveler.one? {|e| e.size == 3}

p %w(ant bear cat).one?(/t/)#False


#none ---> hepsi false ise turu dönecek.
p %w(ant bear cat).none?{|word| word.length == 5}
[].none?
p %w(ant bear cat)one?(/d/)
p [nil].none?
p [1, 3.14, 42].none?(Float)


#sum
p [20,35,54,98].sum {|e| e % 5}
p {1 => 10, 2 => 20}.sum{|k,v| k * v}


