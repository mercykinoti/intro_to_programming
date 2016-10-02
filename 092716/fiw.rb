
words = { 0 => "Zero",1 => "One",2 => "Two", 3 =>"Three", 4 => "Four", 5 => "Five", 6 => "Six", 7 => "Seven", 8 => "Eight", 9 =>"Nine", 10 => "Ten",
	11 => "Eleven", 12 => "Twelve", 13 => "Thirteen", 14 => "Fourteen", 15 => "Fiveteen", 16 => "Sixteen", 17 => "Seventeen",18 => "Eighteen",19 => "Nineteen",20 => "Twenty",
	21 => "Twenty One", 22 => "Twenty Two", 23 => "Twenty Three", 24 => "Twenty Four", 25 => "Twenty Five", 26 => "Twenty Six", 27 => "Twenty Seven",28 => "Twenty Eight", 29 => "Twenty Nine", 
	30 => "Thirty",31 => "Thirty One",32 => "Thirty Two",33 => "Thirty Three",34 => "Thirty Four",35 => "Thirty Five", 36 => "Thirty Six",37 => "Thirty Seven",38 => "Thirty Eight", 39 => "Thirty Nine",
	40 => "Fourty", 41 => "Fourty One", 42 => "Fourty Two",43 => "Fourty Three",44 => "Fourty Four",45 => "Fourty Five",46 => "Fourty Six",47 => "Fourty Seven",48 => "Fourty Eight",49 => "Fourty Nine",
	50 => "Fifty", 51 => "Fifty One", 52 => "Fifty Two",53 => "Fifty Three",54 => "Fifty Four",55 => "Fifty Five",56 => "Fifty Six",57 => "Fifty Seven",58 => "Fifty Eight",59 => "Fifty Nine", 
	60 => "Sixty", 61 => "Sixty One", 62 => "Sixty Two",63 => "Sixty Three",64 => "Sixty Four",65 => "Sixty Five",66 => "Sixty Six",67 => "Sixty Seven",68 => "Sixty Eight",69 => "Sixty Nine", 
	70 => "Seventy", 71 => "Seventy One", 72 => "Seventy Two",73 => "Seventy Three",74 => "Seventy Four",75 => "Seventy Five",76 => "Seventy Six",77 => "Seventy Seven",78 => "Seventy Eight",79 => "Seventy Nine", 
	80 => "Eighty",  81 => "Eighty One", 82 => "Eighty Two",83 => "Eighty Three",84 => "Eighty Four",85 => "Eighty Five",86 => "Eighty Six",87 => "Eighty Seven",88 => "Eighty Eight",89 => "Eighty Nine",
	90 => "Ninety",  91 => "Ninety One", 92 => "Ninety Two",93 => "Ninety Three",94 => "Ninety Four",95 => "Ninety Five",96 => "Ninety Six",97 => "Ninety Seven",98 => "Ninety Eight",99 => "Ninety Nine",
	 "&" => "and", "-" => "Negative"}

puts "The number here: "
num = []
first_get = gets.chomp.split("")

if first_get[0] == "-"
  n_num = first_get[1..-1].map(&:to_i)
   first_two = n_num.first(2).join.to_i
last_two = n_num.last(2).join.to_i
t_next = [n_num[1],n_num[2]].join.to_i
t_m = [n_num[2],n_num[3]].join.to_i
t_m_1 = [n_num[3],n_num[4]].join.to_i
t_m_2 = [n_num[4],n_num[5]].join.to_i
t_m_3 = [n_num[5],n_num[6]].join.to_i
figure = []
if n_num.length == 1
		figure.push([words["-"],words[n_num[0]]].join(" "))	
	elsif n_num.length == 2
		figure.push([words["-"],words[first_two]].join(" "))
	elsif n_num.length == 3	
		 figure.push([words["-"],words[n_num[0]],"Hundred",words["&"],words[last_two]].join(" "))
	elsif n_num.length == 4	
		figure.push ([words["-"],words[n_num[0]],"Thousand",words[n_num[1]],"Hundred", words["&"],words[last_two]].join(" "))
	elsif n_num.length == 5	
		figure.push([words["-"],words[first_two],"Thousand",words[n_num[2]],"Hundred", words["&"],words[last_two]].join(" "))				
	elsif n_num.length == 6
	      figure.push([words["-"],words[n_num[0]],"Hundred",words["&"],words[t_next],"Thousand",words[n_num[3]],"Hundred",words["&"],words[last_two]].join(" "))	
	elsif n_num.length == 7
		figure.push ([words["-"],words[n_num[0]],"Million",words[n_num[1]],"Hundred",words["&"],words[t_m],"Thousand",words[n_num[4]],"Hundred",words["&"],words[last_two]].join(" "))
	elsif n_num.length == 8
		 figure.push([words["-"],words[first_two],"Million",words[n_num[2]],"Hundred",words["&"],words[t_m_1],"Thousand",words[n_num[5]],"Hundred",words["&"],words[last_two]].join(" ")) 
	elsif n_num.length == 9
		figure.push([words["-"],words[n_num[0]],"Hundred",words["&"],words[t_next],"Million",words[n_num[3]],"Hundred",words["&"],words[t_m_2],"Thousand",words[n_num[6]],"Hundred",words["&"],words[last_two]].join(" "))	 	      		 	      
	elsif n_num.length == 10
		figure.push([words["-"],words[n_num[0]],"Billion",words[n_num[1]],"Hundred",words["&"],words[t_m],"Million",words[n_num[4]],"Hundred",words["&"],words[t_m_3],"Thousand",words[n_num[7]],"Hundred",words["&"],words[last_two]].join(" "))
end		
puts figure 
end

if first_get[0] != "-"
   num = first_get.map(&:to_i)
   first_two = num.first(2).join.to_i
last_two = num.last(2).join.to_i
t_next = [num[1],num[2]].join.to_i
t_m = [num[2],num[3]].join.to_i
t_m_1 = [num[3],num[4]].join.to_i
t_m_2 = [num[4],num[5]].join.to_i
t_m_3 = [num[5],num[6]].join.to_i
figure = []
if num.length == 1
		figure.push([words[num[0]]])	
	elsif num.length == 2
		figure.push([words[first_two]])
	elsif num.length == 3	
		 figure.push([words[num[0]],"Hundred",words["&"],words[last_two]].join(" "))
	elsif num.length == 4	
		figure.push ([words[num[0]],"Thousand",words[num[1]],"Hundred", words["&"],words[last_two]].join(" "))
	elsif num.length == 5	
				figure.push([words[first_two],"Thousand",words[num[2]],"Hundred", words["&"],words[last_two]].join(" "))				
	elsif num.length == 6
	      figure.push([words[num[0]],"Hundred",words["&"],words[t_next],"Thousand",words[num[3]],"Hundred",words["&"],words[last_two]].join(" "))	
	elsif num.length == 7
		figure.push ([words[num[0]],"Million",words[num[1]],"Hundred",words["&"],words[t_m],"Thousand",words[num[4]],"Hundred",words["&"],words[last_two]].join(" "))
	elsif num.length == 8
		 figure.push([words[first_two],"Million",words[num[2]],"Hundred",words["&"],words[t_m_1],"Thousand",words[num[5]],"Hundred",words["&"],words[last_two]].join(" ")) 
	elsif num.length == 9
		figure.push([words[num[0]],"Hundred",words["&"],words[t_next],"Million",words[num[3]],"Hundred",words["&"],words[t_m_2],"Thousand",words[num[6]],"Hundred",words["&"],words[last_two]].join(" "))	 	      		 	      
	elsif num.length == 10
figure.push([words[num[0]],"Billion",words[num[1]],"Hundred",words["&"],words[t_m],"Million",words[num[4]],"Hundred",words["&"],words[t_m_3],"Thousand",words[num[7]],"Hundred",words["&"],words[last_two]].join(" "))
end		
puts figure
end	
