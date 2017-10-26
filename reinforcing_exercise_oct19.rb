require "pp"

classroom = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

breakLoop = false

pp classroom

classroom.each_with_index { |row,row_index|

  row.each_with_index{ |seat,seat_index|
    if seat == nil
      puts "Row #{row_index+1} seat #{seat_index+1} is free. Do you want to sit there? (y/n)"
      choice = gets.chomp.to_s
      if choice == 'y'
        breakLoop = true
        puts "What is your name ?"
        name = gets.chomp.to_s
        classroom[row_index][seat_index] = name
        break
      end
    end
  }

  if breakLoop == true
    break
  end

}

pp classroom
