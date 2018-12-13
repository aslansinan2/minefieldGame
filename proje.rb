
 print("sayi gir:")
N=gets.to_i

 field=Array.new(N) {Array.new(N ,  "| 0 |" )}
 
 mines =Array.new(N) {Array.new(N)}
 rnd=Random.new
(Math.sqrt(N).to_i).times do
 
    rndA=rnd.rand 0...N
    rndB=rnd.rand 0...N
    mines[rndA][rndB] = "| M |"
end
  for c in 0...N
    for d in 0...N
      if (field[c][d] != "| M |")
           print("#{field[c][d]}")
      else 
          print("| 0 |")
   end
end
  print("\n")
end
durum=1
puan=0

 while durum==1 do
  var=0
  print("\n girmek istediginiz ROW")          
  g1=gets.to_i
  print("\n girmek istediginiz COLUMN") 
  r1 = gets.to_i
 puts %x!clear!
 if(mines[g1][r1]=="| M |")
    print("oyun bitti! puanın=#{puan}\n")
    durum=0
 else 
       for k in 0...N 
         for l in 0...N
           if(k>=g1-1 && k<=g1+1 && l>=r1-1 && l<=r1+1)
              if(mines[k][l]=="| M |")
                 field[k][l] ="| M |"
              else 
                 field [k][l]="|   |"
              end
              print("#{field[k][l]}")
           else 
               print("#{field[k][l]}")
           end
        end
      print("|\n")      
       end
   
     puan +=1
     for k in 0...N
       for l in 0...N
         if(field[k][l]==("| ? |"))
          var =1
          end
         end         
       end
      if(var==1)
        durum = 1
     
      else
        print("Congrates! You Win! Your score is=#{puan * 2}\n")
        
     end
    end
  end
