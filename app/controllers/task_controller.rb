require 'date'
class TaskController < ApplicationController

    get '/tasks' do
        tasks = Task.all
        
        tasks.to_json
    end


get "/tasks/:id"  do
    task = Task.find_by_id(params[:id])
    task.to_json
end

post "/create-tasks" do

    task =Task.create(params)

    task.to_json
end

#updtate status of task
patch "/tasks/:id" do
    
    task = Task.find_by_id(params[:id])
    task.update(
        "status":params[:status].to_i,
        "description":params[:description]
    )

    task.to_json
end

delete '/tasks/:id' do

    task = Task.find_by_id(params[:id])
    task.destroy
    task.to_json
end

end