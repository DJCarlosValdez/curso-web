# def find_duplicates(array)
#     array2 = []
#     array3 = []
#     array.each do |x|
#         if !array2.include?(x)
#             array2 << x
#         elsif array2.include?(x)
#             array3 << x
#         end
#     end
#     p array3
# end

# numbers = [1,2,2,3,4,5]
# find_duplicates(numbers)

#---------------------------------------------------------------------------------------------------------

# def valid_word?(char, word)
#     array1 = char.sort!
#     array2 = word.split(//).sort!
#     if (array1 == array2)
#         p true
#     else
#         p false
#     end
# end

# word = "orange"
# characters = %w(e n g a r o)
# valid_word?(characters, word)

#---------------------------------------------------------------------------------------------------------

def no_yelling (string)
    array1 = string.split(//).reverse!
    array2 = array1
    symbols = "a"
    array1.each_with_index do |x, i|
        if x == ! || x == ?
            if !symbols.include?(x)
                symbols = x
            end
        elsif symbols.include?(x)
            array2.delete_at(1)
        end
    end
    p array2.reverse!
end


no_yelling("What went wrong?????????")  #➞ "What went wrong?"

no_yelling("Oh my goodness!!!")  #➞ "Oh my goodness!"

no_yelling("I just!!! can!!! not!!! believe!!! it!!!")  #➞ "I just!!! can!!! not!!! believe!!! it!"
# Only change repeating punctuation at the end of the sentence.

no_yelling("Oh my goodness!")  #➞ "Oh my goodness!"
# Do not change sentences where there exists only one or zero exclamation marks/question marks.

no_yelling("I just cannot believe it.")  #➞ "I just cannot believe it."