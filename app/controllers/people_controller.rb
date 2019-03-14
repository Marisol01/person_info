# class PeopleController < ApplicationController

#   before_action :find_person, only: [:show, :edit, :update, :destroy]

#   def index
#     @people = Person.all
#   end

#   def show

#   end

#   def new
#     @person = Person.new(person_params)
#   end

#   def create
#     @person = Person.new(person_params)
#     if @person.save
#       redirect_to people_path
#     else 
#       render :new
#     end
#   end

#   def edit

#   end

#   def update
#     if @person.update(person_params)
#       redirect_to people_path
#     else
#       render :edit
#     end
#   end

#   def destroy
#     @person.destroy
#     redirect_to people_path
#   end

#   private

#   def person_params
#     params.require(:person).permit(:first_name, :last_name, :age, :hair_color, :eye_color, :gender, :alive)
#   end

#   def find_person
#     @person = Person.find(params[:id])
#   end


# end


class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(people_params)

    if @person.save
      redirect_to people_path
    else
      render :new
    end

  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    if @person.update(people_params)
      redirect_to people_path
    else
      render :edit
    end

  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to people_path
  end


  private

    def people_params
      params.require(:person).permit(:name, :age, :gender, :hair_color, :eye_color, :alive)
    end

end
