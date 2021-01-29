class FiguresController < ApplicationController
  # add controller methods
  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    if !params["landmark"]["name"].empty?
      @figure.landmarks << Landmark.create(params["landmark"])
    end
<<<<<<< HEAD
=======

>>>>>>> 73b2d68d832740be72bf12fc86477f59d8736d8c
    if !params["title"]["name"].empty?
      @figure.titles << Title.create(params["title"])
    end
    @figure.save
<<<<<<< HEAD
    redirect "/figures/#{@figure.id}"
=======
    redirect '/figures/#{@figure.id}'
>>>>>>> 73b2d68d832740be72bf12fc86477f59d8736d8c

  end



  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/:id' do
    @figure = Figure.find_by_id(params[:id])
    erb :'figures/show'
  end

  get '/figures/:id/edit' do
    @figure = Figure.find_by_id(params[:id])
<<<<<<< HEAD
    @titles = Title.all
    @landmarks = Landmark.all

    erb :'figures/edit'
  end

  patch '/figures/:id' do

    @figure = Figure.find_by_id(params[:id])
    @figure.update(params[:figure])

    if !params["landmark"]["name"].empty?
      @figure.landmarks << Landmark.create(params["landmark"])
    end

    if !params["title"]["name"].empty?
      @figure.titles << Title.create(params["title"])
    end
    @figure.save

    redirect "/figures/#{@figure.id}"

  end
=======
    erb :'figures/edit'
  end

  patch '/figures/'
>>>>>>> 73b2d68d832740be72bf12fc86477f59d8736d8c

end
