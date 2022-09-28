def calculator

  # Просим пользователя ввести два числа
  while 1
    puts 'Первое число:'
    a = STDIN.gets.chomp.to_i # 2.9 -> 2
    puts 'Второе число:'
    b = STDIN.gets.chomp.to_i # the same
    # just in case :)
    puts a
    if a.to_s.match(/\d/) && b.to_s.match(/\d/)
      puts 'Выберите операцию (+ - * /)'
      operation = STDIN.gets.chomp

      # Выводим результат с помощью case
      puts 'Результат:'
      case operation
      when '+'
        puts a + b
      when '-'
        puts a - b
      when '*'
        puts a * b
      when '/'
        begin
          puts a / b
        rescue ZeroDivisionError
          puts 'You can not divide by zero'
        end
      else
        puts 'Incorrect operation'
      end
    else
      puts 'This function takes only integer'
    end
  end
end

calculator