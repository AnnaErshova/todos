def separate_with_comma(n)
  num = n.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
end
