# Collections Practice
 
# 1. sort the following array in ascending order
  my_array = ["blake", "ashley", "scott"]
  my_array.sort
# 2. sort the following array in descending order]
  my_array.sort.reverse
# 3. put the following array in reverse order
  my_array.sort { |x,y| y <=> x }
# 4. grab the second element in the array
  my_array[1]
# 5. print each element of the array to the console
  my_array.each do |name|
    puts name
  end
# 6. create a new array in the following order (see below) using the prior array
 #  ["blake", "scott", "ashley"]
  my_array[1] = "scott"
  my_array[2] = "ashley"
# 7. using the "my_array" array create a hash where the elements in the array are the keys and the values of the hash are those elements with the 3rd character changed to a dollar sign.
    my_hash_7 = { :blake => bl$ke, :ashley => as$ley, :scott => sc$tt }
    # first attempt at converting array into hash, does not work: my_hash = my_array(3) { Hash.new }
# 8. create a hash with two keys, "greater_than_10", "less_than_10" and their values will be an array of any numbers greater than 10 or less than 10 in the following array
    my_array_8 = [100, 1000, 5, 2, 3, 15, 1, 1, 100 ]
    my_hash_8 = {:greater_than_10 => [], :less_than_10 => [], :equal_to_10 => []}
    my_array_8.each do |num|
        if num < 10
          my_hash_8[:less_than_10] << num
        elsif num > 10
          my_hash_8[:greater_than_10] << num
        elsif num == 10
          my_hash_8[:equal_to_10] << num
        end
      end
# 9. find all the winners and put them in an array
    my_hash_9 = { :blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner" }
    winners_9 = []
    my_hash_9.each do |key,value|
      if value == "winner"
        winners_9 << key
      end
    end
# 10. add the following arrays
  array_10a = [1,2,3]
  array_10b = [5,9,4]
  array_10c = array_10a + array_10b
# 11. find all words that begin with "a" in the following array
  array_11 = ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
  array_11.each do [element]
    if element[0] == "a"
      put element
    end
# 12. sum all the numbers in the following array
  array_12 = [11,4,7,8,9,100,134]
  sum_12 = 0
  array_12.each { |num| sum_12 += num }
# 13. Add an "s" to each word in the array except for the 2nd element in the array
  array_13 = ["hand","feet", "knee", "table"]
  count_13 = 0
  array_13.each do |noun|
    count_13 += 1
    next if count == 2
    array_13[count_13 - 1]= "#{noun}s"
  end

# CHALLENGE
 
# word count
 
# "The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong"
 
# Count how many times each word appears in my story.
# Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.
 
# song library
 
# convert the following array of song titles
  
#   ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]
 
# to a nested hash of the form
# {:artist1 => :songs => [], :artist2 => :songs => []}
# []