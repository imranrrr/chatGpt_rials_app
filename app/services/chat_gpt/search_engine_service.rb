class ChatGpt::SearchEngineService
    def initialize(input)
        @text_input = input
        
    end

    def perform
        if @text_input
            api_key = "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"
            return manage_search_result(api_key)
        else
            return "<p></p>"
        end
    end

    private 

    def manage_search_result(api_key)
        response = ChatGpt::Endpoints.new.create(api_key, @text_input)
        if response.code == 200
            return response['choices'][0]['message']['content']
        else
            return ""
        end

    end
end