-- http://lua-users.org/wiki/SplitJoin

-- If God is good, and created the universe, why is there such trouble in the world?
local phrase = "If God is good and created the universe why is there such trouble in the world"

function SplitStringByWords(myString)
  for i in (string.gmatch(myString, "%S+")) do 
    print(i)
  end
end

function SplitStringByCount(myString,count)
  return myString:sub(1,count), myString:sub(count+1)
end


--*********************************************************************************************
--
--  Main code
--
--*********************************************************************************************
SplitStringByWords(phrase)

print("\n[Split at 3]\n")
local string1, string2 = SplitStringByCount("universe",3)
print("string1 = " .. string1 .. " and string2 = " .. string2)
