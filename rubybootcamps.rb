
require "./instructor"
require "./student"
require "./lesson"


@Lesson=[]
@instructor =[]
  def create_lesson(subjet,instructor)
    @Lesson<<Lesson.new({
       subjet: subjet,
       instructor: instructor
    })

  end

  def create_instructor(params)
    puts params
      @instructor << Instructor.new(params)
  end

  def find_instruct(nickname)
    @instructor.each do |instructor|
      instructor if instructor.nickname == nickname
    end
  end

  def print_lesson
    if @Lesson.any?
      @Lesson.each_with_index  do |lesson, index|
         puts "lesson number: #{ index } => #{lesson.subjet}"
         puts "lesson instructor #{ lesson.instructor.nickname }"
       end
     else
       puts "create lesson, not an list the lesson"
     end
  end

  def print_instructors
    if @instructor.any?
      @instructor.each_with_index do |instructor,index|
        puts "#{ index }lesson number: #{ instructor.first_name } => #{ instructor.claim_your_strength }"
      end
    else
      puts "Create instructors, not am list the instructors"
    end
  end


begin
  puts "Welcome to  the ruby bootcamp program"
  puts "1. create a new Instructor"
  puts "2. create a new Lesson"
  puts "10. Print Lesson"
  puts "11. Print instructors"

  @user_input = gets.chomp.downcase
  case @user_input
    when "1"
      instructor_params = {}
      puts "Please type then  first_name"
      instructor_params[:first_name] = gets.chomp.downcase
      puts "Please type then  last_name"
      instructor_params[:last_name] = gets.chomp.downcase
      puts "Please type then  nickname"
      instructor_params[:nickname] = gets.chomp.downcase
      puts "Please type then  strength"
      instructor_params[:strength] = gets.chomp.downcase
      puts "Please type the age"
      instructor_params[:age] = gets.chomp.downcase
      #le pasamos los instructor_params ala funcion create_instructor para crear instuctores nuevos
      create_instructor instructor_params

    when "2"
      if @instructor.any?
        puts "Please type  the subject of the lesson"
        subjet= gets.chomp.downcase
        puts "Please select the instructor (type the index)"
        instructor_index gets.chomp.to_i
        create_lesson(subjet,@instructor[instructor_index])
      else
        puts "Must exits at least one instructor so you can create a lesson"
      end

    when "10"
      print_lesson
    when "11"
      print_instructors

  end

end while @user_input !="exit"
