class CotizacionController < ApplicationController
    def new
      @cotizacion = Cotizacion.new
    end
  
    def create
        @cotizacion = Cotizacion.new(cotizacion_params)
        if @cotizacion.save
          # Aquí se envía el correo electrónico
          CotizacionMailer.enviar_cotizacion(@cotizacion).deliver_now
          redirect_to root_path, notice: 'Cotización enviada correctamente.'
        else
          render :new
        end
    end
  
    private
  
    def cotizacion_params
      params.require(:cotizacion).permit(:nombre, :correo, :ciudad, :telefono, :lugar, :fecha, :cantidad_personas)
    end
end
  