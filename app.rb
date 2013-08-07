require 'json'
require 'sinatra'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './models/lead'

set :database_file, ".config/database.yml"

configure { set :server, :puma }

get '/' do
  erb :index
end

post "/" do
  content_type :json

  lead = Lead.new(email: params[:email])
  if lead.save
    lead.to_json
  else
    lead.errors.to_json
  end
end
