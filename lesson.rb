class Lesson
  attr_accessor :instructor, :subjet
  def initialize(params={})
    @instructor = params[:instructor] if params[:instructor]
    @subjet = params[:subjet] ? params[:subjet] : "Party!!"
  end


end
