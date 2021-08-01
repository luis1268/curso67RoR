module MiEnumerable
    def mi_each
        #for i in 0...self.length
        #    yield(self[i])
        #end
        self.each {|j| yield(j)}
    end 
end

class Array
    include MiEnumerable
end

[1,2,3,4].mi_each { |i| puts i } # => 1 2 3 4
[1,2,3,4].mi_each { |i| puts i * 10 } # => 10 20 30 40