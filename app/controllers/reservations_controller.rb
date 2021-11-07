class ReservationsController < ApplicationController

  
  def index
    @reservaNueva = Reservation.new
  end
  def show
    @listaReservation = Reservation.all
    @pelicula = Movie.all


  end
  
  def mostrarReservas
    @listaReservation = Reservation.all
    @fechaBuscada = params[:dateReservation]
    @pelicula = Movie.all

    @arregloReserva = []
    @listaReservation.each do |x|
      if x.fechaReserva == @fechaBuscada
         @arregloReserva << x
      end
      
    end
  end

  def contador(idPelicula, fr, contador)
    @listaReservation = Reservation.all
    
    @listaReservation.each do |x|
      if x.movie_id.to_s == idPelicula.to_s && x.fechaReserva == fr
        contador += 1
      end
    end
    return contador

  end

  def texto(idPelicula, fr, contador)
    @listaReservation = Reservation.all
    @listaReservation.each do |x|
    
      if x.fechaReserva == fr && x.movie_id.to_s == idPelicula.to_s 
        contador += 1 
      end
    end
    return contador

  end

  def create
    
    @listaReservation = Reservation.all
    @contador = 0
    @idPelicula = params[:reservation][:movie_id]
    @fr = params[:reservation][:fechaReservation]
    hola = texto(@idPelicula, @fr, @contador)
    
    
    
    if contador(@idPelicula, @fr, @contador) < 10
      @reservaNueva = Reservation.create(nombre: params[:reservation][:nombre], cedula: params[:reservation][:cedula], celular: params[:reservation][:celular], correo: params[:reservation][:correo], movie_id: @idPelicula, fechaReserva: params[:reservation][:fechaReservation] )
      if @reservaNueva.save
        redirect_to action: :show, notice: "#{hola}"
      else
        redirect_to action: :index, notice: "no se pudo crear la reserva"
      end
    else
      redirect_to action: :index, notice:"no hay sillas dispobibles para la funcion"
    end 
    
    
  end
end
