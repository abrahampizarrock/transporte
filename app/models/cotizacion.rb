class Cotizacion < ApplicationRecord
        # Validaciones de presencia (presence) para asegurarse de que los campos no estén vacíos
        validates :nombre, :correo, :ciudad, :telefono, :lugar_a_cotizar, :fecha, :cantidad_personas, presence: true
      
        # Validación de formato de correo electrónico
        validates :correo, format: { with: URI::MailTo::EMAIL_REGEXP }
      
        # Validación de formato de número de teléfono
        validates :telefono, format: { with: /\A\d{10}\z/, message: "debe tener 10 dígitos" }
      
        # Validación personalizada para fecha (puedes adaptarla según tus necesidades)
        validate :fecha_valida
      
        private
      
        # Método para validar la fecha (ejemplo básico, puedes personalizar según tu lógica)
        def fecha_valida
          if fecha.present? && fecha < Date.today
            errors.add(:fecha, "no puede estar en el pasado")
          end
        end
          
end
