class DaysController < ApplicationController
  def index
    @days = Day.all

    render("days/index.html.erb")
  end

  def show
    @day = Day.find(params[:id])

    render("days/show.html.erb")
  end

  def new
    @day = Day.new

    render("days/new.html.erb")
  end

  def create
    @day = Day.new

    @day.day_of_week = params[:day_of_week]

    save_status = @day.save

    if save_status == true
      redirect_to("/days/#{@day.id}", :notice => "Day created successfully.")
    else
      render("days/new.html.erb")
    end
  end

  def edit
    @day = Day.find(params[:id])

    render("days/edit.html.erb")
  end

  def update
    @day = Day.find(params[:id])

    @day.day_of_week = params[:day_of_week]

    save_status = @day.save

    if save_status == true
      redirect_to("/days/#{@day.id}", :notice => "Day updated successfully.")
    else
      render("days/edit.html.erb")
    end
  end

  def destroy
    @day = Day.find(params[:id])

    @day.destroy

    if URI(request.referer).path == "/days/#{@day.id}"
      redirect_to("/", :notice => "Day deleted.")
    else
      redirect_to(:back, :notice => "Day deleted.")
    end
  end
end
