require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
    
    get '/new' do
      erb :new
    end

    post '/pirates' do
      ships = params[:pirate][:ships]
      pirate = params[:pirate]
      @ship1 = Ship.new(ships[0][:name], ships[0][:type],ships[0][:booty])
      @ship2 = Ship.new(ships[1][:name], ships[1][:type],ships[1][:booty])
      @pirate = Pirate.new(pirate[:name], pirate[:weight], pirate[:height])
      erb :show
    end

  end
end
