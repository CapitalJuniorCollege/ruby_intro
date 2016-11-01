
require "./persona"
class Student < Persona
#definismos los atributos que vamos a resivir
  attr_accessor :tutor,:average
  def initialize (params={})
    super
    @tutor = params[:tutor] if params[:tutor]
    @average = params[:average]  if params[:average]
  end

  def claim_your_age
    "#{ super } and i am STUDENT"

  end
end
