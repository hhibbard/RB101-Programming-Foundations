hsh = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
new_hsh = {}

hsh.map do |sub_hsh|
  sub_hsh.each {|k, v| new_hsh[k] = (v + 1) }
end