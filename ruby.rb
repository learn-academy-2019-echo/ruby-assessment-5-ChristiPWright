# ASSESSMENT 4: INTRO TO RUBY
# Coding practical questions

# 1. Use TWO different Ruby methods to return a new array with all the numbers multiplied by 3. Expected output: [3, 6, 18, 27, 9, 63]

myArray = [1, 2, 6, 9, 3, 21]

# puts myArray.map{|element| element*3}

# myArray.each{|element| p element*3}

#below is throwing errors why?

def mult array
  r_array = []
  i = 0
  while i<array.length do
    r_array.push(array[i]*3)
    i+= 1
  end
  p r_array
end  

mult(myArray)



# 2. Create a method that takes in a sentence and returns a new sentence with the first letter of each word capitalized. Expected output = "Hello There, How Are You?"

sentence = "hello there, how are you?"

def capitalization (string)
  array = string.split(" ")
  new_array = array.map{|element| element[0].upcase + element.slice(1..)}
  new_array.join(" ")
end

p capitalization(sentence)

# .titleize & titlecase should work but don't ... why? b/c they are available in rails nor vanilla ruby

# 3. Create a method that takes in a string and returns a new string with all the vowels removed. Expected output = " hv n vwls"

no_vowels = "I have no vowels"

def consonants (string)
  array = string.split("")
  array.reject { |letter| letter == "a" or letter == "e" or letter == "i" or letter == "o" or letter == "u" }.join("")
end

p consonants(no_vowels)

#within block returns true/false for each element but is also shoveling elements that pass requirements into new array being returned

# 4. Look at this horrible Ruby code. Fix it to be good Ruby code.

class Example 
  #constructor(day) # is this trying to be super? idk what this line of code is trying to do
  def initialize (day)  
    @day= day
  end

  def say_hi
    if @day == "Friday"
      puts "TGIF!"
    elsif @day == "Monday"
      puts "Its monday again"
    else
      puts "another day"
    end
  end
end

#I think I am having the same ends problem I had with the while do/end method I created but for the life of me I can't see what I'm doing differently than the docs/examples

# 5a. Create a class called Animal that initializes with a color. Create a method in the class called legs that returns 4.

class Animal
  def initialize (color)
    @color = color
  end
  
  def color
    @color
  end  
  
  def legs
    puts "4"
  end
end

#I'm not sure if I got the gist of what was being asked of me here

# 5b. Create a new instance of an Animal with a brown color. Return how the number of legs for the animal object.

dog = Animal.new("black")
p dog
