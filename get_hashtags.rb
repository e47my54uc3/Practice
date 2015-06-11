def get_hashtags(post)
  post.scan(/(#(\w+))/).map {|tag| $2 }
end

p get_hashtags("hu# #lk")