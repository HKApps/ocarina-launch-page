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

  lead = Lead.new(email: params[:email].downcase)
  if lead.save
    status 201
    lead.to_json
  else
    status 422
    lead.errors.to_json
  end
end
