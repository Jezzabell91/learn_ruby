#write your code here

def ftoc(temp)
    floatResult = (temp - 32.0) / 1.8
    floatResult.round
end

def ctof(temp)
    floatResult = (temp * 1.8) + 32
end