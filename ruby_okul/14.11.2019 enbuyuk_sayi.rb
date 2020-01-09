def enbuyuk_bul bar
    max = -1
    bar.each {|e| max = e if max < e}
    max
end
=begin
def enbuyuk_bul bar
    max = -1
    bar.each do |e|
        if max < e
            max = e
        end
    end
    max
end
=end
i  = 0
dizi = []
while i < 25
    dizi << rand(1000)
    i +=1
end
p "dizi = #{dizi}"
puts "en büyük sayı: #{enbuyuk_bul dizi}"
