class HomeController < ApplicationController

    def trash_em
        @trash_em = List.where(:completed => true).destroy_all
        redirect_to lists_url, notice: "All Marked Items Were Sucessfully Deleted"
    end 
end 