

class Application 
  def call(env)
    res = Rack::Response.new
    date = Time.now
    if date.hour > 11 
      res.write 'Good Afternoon!'
    else
      res.write "Good Morning!"
    end
    res.finish
  end
end