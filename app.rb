require 'sinatra'
require 'sinatra/json'
require 'sequel'
require 'json'

DB = Sequel.connect('sqlite://api.db')

DB.create_table? :tasks do
  primary_key :id
  String :title
  String :description
  Boolean :completed, default: false
end

class Task < Sequel::Model
end

configure :development do
  set :show_exceptions, true
end


get '/tasks' do
  task = Task.all.map(&:values)
  json task
end

post '/tasks' do
  data = JSON.parse(request.body.read)
  task = Task.create(title: data.fetch('title'), description: data.fetch('description'))
  json task
end


