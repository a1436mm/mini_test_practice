require "mini_test_practice/version"

module MiniTestPractice
class MyClass
      def odd?(value)
      if value % 2 == 0 then
       return false
	end
      return true
      end

      def check_number?(value)
      if value.to_i > 999 then
         if value % 2 == 0 then
            return true
         end
      return false 
      end
      return false 
      end

      def enough_length?(value)
      if value.length > 2 and value.length < 9 then
       return true
      end
      return false
      end

      def devide(a,b)
      if b == 0 then
      throw ZeroDivisionError
      end 
  
      value = a.to_f/b.to_f
      return value 
      end

      def fizz_buzz(value)
      if value == 0 then return "" end
      if value % 15 == 0 then
          return 'FizzBuzz'
      else
          if value % 5 == 0 then
              return 'Buzz'
          else
             if value % 3 == 0 then
                 return 'Fizz'
             else
                 return ''
             end 
          end
      end
      end

      def Hello
      print "Hello"
      end
end
end
