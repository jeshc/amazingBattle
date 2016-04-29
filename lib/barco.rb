class Barco

  @@limite_intentos = 5

  def restarIntento
    @@limite_intentos -= 1
  end


  def definirMensaje valor
    mensaje = ''

    case valor
      when 2 then mensaje = 'Atinaste!'
      when 3 then mensaje = 'No atinaste!'
    end

    mensaje
  end




end
