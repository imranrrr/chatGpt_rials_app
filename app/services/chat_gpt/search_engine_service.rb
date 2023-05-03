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