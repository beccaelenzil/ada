def checkends(s)
  if s.length == 1
    return true
  elsif s[0] == s[-1]
    return true
  else
    return false
  end
end

def flipside(s)
  n = s.length
  return s[n/2,n]+s[0,n/2]
end


