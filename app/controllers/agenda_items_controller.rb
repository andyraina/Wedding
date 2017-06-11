class AgendaItemsController < ApplicationController
  def index
    @agenda_items = AgendaItem.all

    render("agenda_items/index.html.erb")
  end

  def show
    @agenda_item = AgendaItem.find(params[:id])

    render("agenda_items/show.html.erb")
  end

  def new
    @agenda_item = AgendaItem.new

    render("agenda_items/new.html.erb")
  end

  def create
    @agenda_item = AgendaItem.new

    @agenda_item.start_time = params[:start_time]
    @agenda_item.end_time = params[:end_time]
    @agenda_item.description = params[:description]
    @agenda_item.status = params[:status]
    @agenda_item.event_id = params[:event_id]
    @agenda_item.leader = params[:leader]

    save_status = @agenda_item.save

    if save_status == true
      redirect_to("/agenda_items/#{@agenda_item.id}", :notice => "Agenda item created successfully.")
    else
      render("agenda_items/new.html.erb")
    end
  end

  def edit
    @agenda_item = AgendaItem.find(params[:id])

    render("agenda_items/edit.html.erb")
  end

  def update
    @agenda_item = AgendaItem.find(params[:id])

    @agenda_item.start_time = params[:start_time]
    @agenda_item.end_time = params[:end_time]
    @agenda_item.description = params[:description]
    @agenda_item.status = params[:status]
    @agenda_item.event_id = params[:event_id]
    @agenda_item.leader = params[:leader]

    save_status = @agenda_item.save

    if save_status == true
      redirect_to("/agenda_items/#{@agenda_item.id}", :notice => "Agenda item updated successfully.")
    else
      render("agenda_items/edit.html.erb")
    end
  end

  def destroy
    @agenda_item = AgendaItem.find(params[:id])

    @agenda_item.destroy

    if URI(request.referer).path == "/agenda_items/#{@agenda_item.id}"
      redirect_to("/", :notice => "Agenda item deleted.")
    else
      redirect_to(:back, :notice => "Agenda item deleted.")
    end
  end
end
