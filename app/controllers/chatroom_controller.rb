class ChatroomController < ApplicationController

    before_action :require_client

    def index
        @message= Message.new
        @messages= Message.all
       
    end
end
