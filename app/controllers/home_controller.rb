class HomeController < ApplicationController

    def trash_em
        @trash_em = List.where(:completed => true).destroy_all
        redirect_to lists_url, notice: "All Marked Items Were Sucessfully Deleted"
    end 
    def trash_em_all
        @trash_em = List.destroy_all
        redirect_to lists_url, notice: "All Items Were Sucessfully Deleted"
    end 
    def check_marker
        # Gets the param that was submitted
        param_value = params[:id]
        # This gets the to do item from the DB and saved it in the @list param
        @list = List.find(params[:id])
        # This will then update the todo to have the "completed" column set to "true"
        @list.update(completed: true) # or whatever update you need to perform
        # Redirects back to lists
        redirect_to lists_path, notice: 'Marker checked.'
    end
end 