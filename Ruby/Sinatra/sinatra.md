# What it is

* A domain-specific language (i.e. not turing complete etc) for creating quick, smaller web apps in ruby
* A ruby gem.

## How it works
* First install the 'sinatra' gem

### Routing
* Sinatra associates messages sent to different routes with blocks, e.g:
```
get '/' do
  .. show something ..
end

post '/' do
  .. create something ..
end

put '/' do
  .. replace something ..
end

patch '/' do
  .. modify something ..
end

delete '/' do
  .. annihilate something ..
end
```

* Routes with a '/' at the end are different to ones without!!
* Route paths can include names parameters, e.g. `get 'hello/:name' do`
  * Can then use params['name'] do access whatever they type in
  * Can use block parameters to access these, e.g. `get 'hello/:name' do |name| ... end`
  * See documentation for more info on this

## How to use
* First create an app.rb and require sinatra
* Give it the code you want to do your server stuff
* **run that file in the command line**
* visit localhost:4567

* Use the **shotgun** app if you don't want to start the server up again every time: `shotgun app.rb -p 4567`
  * have to give it the port or it will default to a different one


## Views

* We separate all our html, styling, etc. by putting them in .erb files in a view folder.
  * Writing erb[:filename] in our main ruby app (routes file) will then load the html.


## Params

* * When the client makes a request with *parameters* (e.g. via a query string), those params will be saved in a `params` hash.
* In the controller/routes file, you can then access these using standard ruby hash notation - i.e. params[:name] - and save this information in an instance variable etc.
* You can now make use of the parameters you're given in the logic of the application (e.g. simply displaying them to the user by using instance variables in a view)

## Sessions

* A session is a short-term information store that lives on the server. It's very small, but it allows the server to store basic pieces of information, like the name of the current user, across multiple requests.
  * In Sinatra, session is a Hash, and you can set values for its keys.
  * A session is most often used to store details of a logged in user.
* Important because instance variables won't persist across multiple requests in the same say (e.g. can't set one in a post block and then use it in a get block)
* **NB:** I think they persist across different get/post requests but NOT across server restart
  * example:


```
# in app.rb
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    erb :play
  end
```
