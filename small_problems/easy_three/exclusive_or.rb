def xor?(value1, value2)
  if value1 == true || value2 == true
    if value1 == true && value2 == true
      false
    else
      true
    end
  else
    false
  end
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

# Solution
def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end
