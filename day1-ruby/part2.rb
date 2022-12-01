#!/usr/bin/env ruby

if (ARGV.length < 1)
  abort "Need filename as argument!"
end

filename = ARGV.first
e = File.open(filename)
edata = e.read

acc = 0
cals = []

edata.each_line do |line|
  if (line == "\n")
    cals.push(acc)
    acc = 0
  else
    acc = acc + line.to_i
  end
end

e1, e2, e3, *erest = cals.sort.reverse
puts(e1 + e2 + e3)

e.close
