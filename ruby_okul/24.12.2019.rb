# a = [[1,3], ["ali" , "veli"]]
# p a.to_h

# b = [[1,3], ["ali" , "veli"]]
# p b[0]
# p b[0][0]


def matris_dondur n
    rows, cols = n, n
    a = Array.new(rows) {Array.new(cols)}
    i = 0
    while i < n
        j = 0
        while j < n
            a[i][j] = rand(100)
            j += 1
        end
        i += 1
    end
    a
end
c = matris_dondur 2
p c

def matris_transpozu a
    n = a[0].size
    i = 0
    while i < n
        j = 0
        while j < n
            if i != j
                #sorun var !!!!!!!!! matriste transpoz işlemi olmuyor
            end
            j += 1
        end
        i += 1
    end
    a
end
p matris_transpozu c