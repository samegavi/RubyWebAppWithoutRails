class App
   
   def self.call(env) 
     RootController.new(env).show
   end

end