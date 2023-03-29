require_relative './stack'
require "pry"

# your code here

def balancing_parentheses(string)
    stack = Stack.new
    # count = 0
    open_count = 0
    close_count = 0

    string.chars.each do |char|
        stack.push(char)
    end
    # while stack.size > 0 
    #     if string.length == 1
    #         count = 1
    #         stack.pop
        
    #     else
    #         if count < 0
    #             stack.peek == ")" ? count -= 1 : count += 1
    #         else
    #             stack.peek == ")" ? count += 1 : count -= 1
    #         end

    #         stack.pop
    #     end
    # end
    while stack.size > 0
        stack.peek == ")" ? close_count += 1 : open_count += 1
        stack.pop
    end
    
    count = open_count > close_count ? open_count - close_count : close_count - open_count

    if string[string.length - 1] == "(" && string[0] == ")"
        count += 2
    end
#    count = count < 0 ? count * -1 : count
    

    return count

end