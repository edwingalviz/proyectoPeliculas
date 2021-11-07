class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @peliculaNueva = Movie.new
  end

  
  def create 
    
    @peliculaCreada = Movie.create(titulo: params[:movie][:titulo], sinopsis: params[:movie][:sinopsis], url: params[:movie][:url], estreno: params[:movie][:estreno], fin: params[:movie][:fin])
    if @peliculaCreada.save
      redirect_to action: :index, notice: "se creo la pelicula."
      
    else
      
      render :flash => { :success => "No se creo la pelicula" }
      # redirect_to action: :index, notice: "se creo la pelicula."
    end
  end

  
  

  def show
    @movies = Movie.all
    
    @fechas = params[:date1]
    
    @arregloPeliculas = []
    @movies.each do |x|
      if x.estreno <= @fechas && x.fin > @fechas 
         @arregloPeliculas << x
      end
      
    end
    # @movies = Movie.find(params[:date1] [:date2])
  end
end
