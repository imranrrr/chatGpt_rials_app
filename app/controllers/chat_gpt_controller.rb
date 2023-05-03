require 'httparty'
class ChatGptController < ApplicationController
    def index
    end

    def create 
        input = params[:search]
        @response = ChatGpt::SearchEngineService.new(input).perform()
        render :template => "chat_gpt/chat_gpt_response"

    end

    def chat_gpt_response
    end
end

