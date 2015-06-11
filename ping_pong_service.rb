def service(score)

serve_num = score.scan(/\d+/).map(&:to_i).reduce(:+)

  if serve_num < 40
    (serve_num / 5).even? ? 'first' : 'second'
  else
    ((serve_num - 40) / 2).even? ? 'first' : 'second'
  end
  
end



p service("0:4")

#first set of five serves - first player
#second set of five serves = second player