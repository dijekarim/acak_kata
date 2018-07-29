def scramble(str)
  s = str.split(//).sort_by { rand }.join('')
end

@data = ["roti", "buku", "nasi", "sayur", "pulpen"]
point = 0
answer = true
selected_data = ""
puts "Selamat Datang di Tebak Kata!"
puts "Tekan Ctrl+C / Ctr+D untuk keluar game."
puts "<===== GAME STARTED =====>\n\n"

begin
  while(true)
    if answer
      selected_data = @data[rand(@data.length)]
      kata = scramble(selected_data)
      puts "Tebak Kata : #{kata}"
    end
    print "Jawab : "
    ans = gets.chomp
  
    if ans == selected_data
      point += 1
      answer = true
      puts "BENAR, point anda : #{point} \n\n"
    else
      puts "SALAH! silahkan coba lagi.\n\n"
      answer = false
      next
    end
  end
rescue Interrupt => e
  puts "\n\nYeay! Your final score is : #{ point }"
  puts "<===== GAME OVER =====>"
rescue => exception
  puts "\n\nYeay! Your final score is : #{ point }"
  puts "<===== GAME OVER =====>"
end