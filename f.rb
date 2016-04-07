require 'benchmark'
Benchmark.bmbm(10000) do |t|
  t.report{a=[];
  (0..499).each{|i| r=(i<2 ? i:(a[-1]+a[-2]));a.push(r)};
  puts a}

end
