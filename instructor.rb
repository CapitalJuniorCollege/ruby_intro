require "./persona"
##definimos la clase
class Instructor < Persona
  attr_accessor  :nikname, :strength
  def initialize(params = {})
    super
    @nikname = params[:nikname] if params[:nikname]
    @strength = params[:strength] if params[:strength]
  end

  def claim_your_strength
    "I Like so much #{self.strength.upcase}"
  end
end
#fin de la clase
