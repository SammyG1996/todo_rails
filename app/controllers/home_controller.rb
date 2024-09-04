class HomeController < ApplicationController

    def trash_em
        @trash_em = List.where(:completed => true).destroy_all
        redirect_to lists_url, notice: "All Marked Items Were Sucessfully Deleted"
    end 
    def trash_em_all
        @trash_em = List.destroy_all
        redirect_to lists_url, notice: "All Items Were Sucessfully Deleted"
    end 
end 