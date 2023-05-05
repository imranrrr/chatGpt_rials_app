require 'httparty'
class ChatGptController < ApplicationController
    def index
        @chat_gpt_results = ChatGptHistory.all
    end

    def create 
        input = params[:search]  
        response = ChatGpt::SearchEngineService.new(input).perform()
        ChatGptHistory.create!(search_text: input, search_result: response)
        redirect_to root_path
    end
end

