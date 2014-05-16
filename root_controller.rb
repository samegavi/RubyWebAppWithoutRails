class RootController < Controller
  
  def show

  	@name = params["name"] ||"World"
    path = self.env['REQUEST_PATH']

	case path

	when "/" 
      body = render_with_layout('show.html.haml')
	  [200, {}, [body]]

	else 
	  body = "Not Found"
	  [404, {}, [body]]
	end

  end

  
end