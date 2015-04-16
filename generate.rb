def createMatrix(counter, groupnumber)
   list = `cat data.txt | awk '$2 == '#{groupnumber}' { print $1 }'` 
   a = list.strip.tr("\n"," ").split(" ")
#   puts a
   size = a.count - 1
   for i in 0..size
       for j in 0..size
           if i != j
               # remove duplicate link
               if i > j
                   next
               end
               print "#{a[i]} #{a[j]}"
               puts ""
           end
       end
   end
end

def createNationLink(counter, groupnumber)
    list = `cat data.txt | awk '$3 == '#{groupnumber}' { print $1 }'`
    a = list.strip.tr("\n"," ").split(" ")
#    puts a
    size = a.count - 1
    for i in 0..size
        for j in 0..size
            if i != j
                # remove duplicate link
                if i > j
                    next
                end
                print "#{a[i]} #{a[j]}"
                puts ""
            end
        end
    end
 end
for i in 1..109
    countermember = `cat data.txt | awk '$2 == '#{i}' { print $1 }' | wc -l`
    createMatrix(countermember, i)
end

for i in 343..352
    counternationmember = `cat data.txt | awk '$3 == '#{i}' { print $1 }' | wc -l`
    createNationLink(counternationmember, i)
end

