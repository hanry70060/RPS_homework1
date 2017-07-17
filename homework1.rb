# homework1
# 剪刀石頭布
# 先要使用者輸入剪刀石頭或布的其中一個選項
# 接下來讓電腦亂數選出一個選項
# 比較兩個選項，決定誰贏誰輸
# 輸出結果
# 問使用者是否再玩一次

begin #可以美化輸出
  puts "|===============================================|" 
  puts "|Welcome to Rock Paper Scissors!!!              |"
  puts "|===============================================|"

  begin 
    puts "please choose one of the following: R / P / S"
    user_input = gets.chomp.upcase
  end while !["R", "P", "S"].include?(user_input) 

  #接下來請把剩下的部份寫出來...

    #--------------------------------------------------
rps_arr = ["R", "P", "S"]

computer = rps_arr.sample


hash = {
    "R"=>"S" ,
    "P"=>"R" ,
    "S"=>"P" ,
    }

if hash[user_input] ==  computer
    print "贏了！" 
elsif hash[computer] ==  user_input
    print "輸了！"
else 
    print "平手！"
end
    puts "你出#{user_input}敵人出了#{computer}"
# case user_input 

# when "R" 
#         case computer
#         when "R" 
#         puts "平手，你出石頭，電腦有出石頭" 
#         when "P" 
#         puts "輸了，你出石頭，電腦有出布" 
#         when "S"
#         puts "贏了，你出石頭，電腦有出剪刀"
#         end
# when "P" 
#   case computer
#         when "R" 
#         puts "贏了，你出布，電腦有出石頭" 
#         when "P" 
#         puts "平手，你出布，電腦有出布" 
#         when "S"
#         puts "輸了，你出布，電腦有出剪刀"
#         end
# when "S"
#  case computer
#         when "R" 
#         puts "輸了，你出剪刀，電腦有出石頭" 
#         when "P" 
#         puts "輸了，你出剪刀，電腦有出布" 
#         when "S"
#         puts "平手，你出剪刀，電腦有出剪刀"
#         end
#  end


   #--------------------------------------------------

  #問使用者是否還要再玩 
  begin
    puts "Play Again?: Y / N"
    continue = gets.chomp.upcase
  end while !["Y", "N"].include?(continue)

end while continue == "Y"
# 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
puts "Good Bye! Thanks for playing!"
