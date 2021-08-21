# Create a pbm file displaying an X.

size = 300

File.open('x0.0000.pbm', 'w') do |f|
	f.puts "P1\n"
	f.puts "#{size} #{size}\n"
	for i in 1..size
		for j in 1..size
			if i == j or (size-i+1) == j
				f.write "1 "
			else
				f.write "0 "
			end 
		end
		f.write "\n"
	end
end
