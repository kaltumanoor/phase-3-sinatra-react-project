class TaskController < ApplicationController
    get "/tasks"  do
    end

    post "/create-tasks" do
        binding.pry

     task =Task.create(params)
     binding.pry
     task.to_json
    end
end 