# Bu dosya da her işlem ayrı ayrı yapılmalı yoksa dosyalar birbirine karışabilir.

dosya = File.open("12.12.2019(metin).txt", "r")
icerik = dosya.read
dosya.close
icerik.split(" ").each do |kelime|
    puts kelime
end


File.open("12.12.2019(write).txt","w"){
    |e| e.puts "Bafra"
}


var_dosya = File.open("12.12.2019(bar).txt","r")
var_icerik = var_dosya.read
sonuc = {}
sessiz = %w(a e i o u A E I O U)
var_icerik.chars.each do |a|
    if sessiz.include? a
        sonuc[a] = "sesli"
    else
        sonuc[a] = "sessiz"
    end
end
puts "Bu metinde #{sonuc.size} farklı karakter kullanımaktadır.
Bından #{sonuc.select{|k,v| v == "sessiz"}.size} tanesi sessizdir."


def temizle gelen
    sonuc = []
    gelen.each do |e|
        if e.include? "."
            sonuc << e.chop
        else
            sonuc << e
        end
    end
    sonuc
end
file = File. open("12.12.2019(metin).txt", "r")
icerik = file.read
icerik = icerik.split(" ")
sonuc = {}
temizle(icerik).each do |e|
    if !sonuc.key? e
        sonuc[e] = 1
    else
        sonuc[e] += 1
    end
end
print "Bu metinde #{sonuc.size} eşsiz kelime kullanılmaktadır. Kelimelerin sayıları da şöyledir."
puts sonuc
