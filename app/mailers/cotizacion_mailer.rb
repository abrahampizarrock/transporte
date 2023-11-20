class CotizacionMailer < ApplicationMailer
    def enviar_cotizacion(cotizacion)
        @cotizacion = cotizacion
        mail(to: 'abrahampizarroc@gmail.com', subject: 'Nueva Cotización') # Reemplaza con tu dirección de correo
    end
end
