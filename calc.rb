def calculator

  # Просим пользователя ввести два числа
  while 1
    while 1
      puts 'Первое число:'
      a = STDIN.gets.chomp
      if a !~ /\D/
        a = a.to_i # 2.9 -> 2
        break
      else
        puts 'This function takes only integer'
      end
    end


    while 1
      puts 'Второе число:'
      b = STDIN.gets.chomp
      if b !~ /\D/
        b = b.to_i # the same
        break
      else
        puts 'This function takes only integer'
      end
    end

      puts 'Выберите операцию (+ - * /)'
      operation = STDIN.gets.chomp

      puts 'Результат:'
      case operation
      when '+'
        result = a + b
        puts result.to_i
      when '-'
        result = a - b
        puts result.to_i
      when '*'
        result = a * b
        puts result.to_i
      when '/'
        begin
          result = a / b
          puts result.to_i
        rescue ZeroDivisionError
          puts 'You can not divide by zero'
        end
      else
        puts 'Incorrect operation'
      end
  end
end

calculator