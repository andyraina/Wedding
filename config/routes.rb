Rails.application.routes.draw do
  # Routes for the Agenda_item resource:
  root to: "days#index"
  # CREATE
  get "/agenda_items/new", :controller => "agenda_items", :action => "new"
  post "/create_agenda_item", :controller => "agenda_items", :action => "create"

  # READ
  get "/agenda_items", :controller => "agenda_items", :action => "index"
  get "/agenda_items/:id", :controller => "agenda_items", :action => "show"

  # UPDATE
  get "/agenda_items/:id/edit", :controller => "agenda_items", :action => "edit"
  post "/update_agenda_item/:id", :controller => "agenda_items", :action => "update"

  # DELETE
  get "/delete_agenda_item/:id", :controller => "agenda_items", :action => "destroy"
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get "/events/new", :controller => "events", :action => "new"
  post "/create_event", :controller => "events", :action => "create"

  # READ
  get "/events", :controller => "events", :action => "index"
  get "/events/:id", :controller => "events", :action => "show"

  # UPDATE
  get "/events/:id/edit", :controller => "events", :action => "edit"
  post "/update_event/:id", :controller => "events", :action => "update"

  # DELETE
  get "/delete_event/:id", :controller => "events", :action => "destroy"
  #------------------------------

  # Routes for the Day resource:
  # CREATE
  get "/days/new", :controller => "days", :action => "new"
  post "/create_day", :controller => "days", :action => "create"

  # READ
  get "/days", :controller => "days", :action => "index"
  get "/days/:id", :controller => "days", :action => "show"

  # UPDATE
  get "/days/:id/edit", :controller => "days", :action => "edit"
  post "/update_day/:id", :controller => "days", :action => "update"

  # DELETE
  get "/delete_day/:id", :controller => "days", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
