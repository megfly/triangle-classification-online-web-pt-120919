class Triangle
  
  attr_accessor :s1, :s2, :s3, :kind
  
  def initialize (s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end 
  
  def kind 
    
    #triangle rules 
    #The sum of the lengths of any two sides of a triangle always exceeds the length of the third side.
    
  if (@s1 * @s2 * @s3) == 0 || (@s1 + @s2) <= @s3  || (@s2 + @s3) <= s1 || (@s1 + @s3) <= @s2
    
    begin 
      raise TriangleError
        puts error.message 
      end 
      
    else if s1 == s2 && s1 == s3 
      self.kind = :equilateral
      
    else if s1 == s2 || s1 == s3 || s2 == s3
      self.kind = :isosceles
      
    else 
      self.kind = :scalene
    end 
  end 
  end 
end 
  
class TriangleError < StandardError 
  def message 
    puts "not a triangle"
  end 
  
end 
end
