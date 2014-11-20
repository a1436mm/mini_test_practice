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
      return a.to_f/b.to_f
      end




end
end
