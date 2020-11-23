require 'sinatra'
require './lib/saludador'

get '/' do
    #creamos una vista 
    erb :vista
end
post '/saludar' do
    @nombre= params[:Nombre]
    @edad= params[:Edad].to_i #para convertir a enetero ponemos el to_i
    @newedad= Saludador.new().saludarPorEdad(@edad)
    erb :saludar
end