class PagesController < ApplicationController
  def index
    @direccion = "Puchilco s/n, comuna Puqueldon, Chiloé"
    @telefono = "telefono"
    @correo = "correo de la empresa"
    @facebook = "face de la empresa"
    @twitter = "twitter de la empresa"
    @instagram = "insta de la empresa"
  end

  def info
  end

  def photos
  end

  def video
  end
end
