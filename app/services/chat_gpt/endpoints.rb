require 'httparty'
class ChatGpt::Endpoints
    
    def create(api_key, input)
        post(api_key, input)
    end

    private

    def post(api_key, input)
        baseUrl = "https://api.openai.com/v1/chat/completions"
        headers = {
            'Authorization': "Bearer #{api_key}",
            'Content-Type': 'application/json'
        }
        body = {
            model: 'gpt-3.5-turbo',
            messages: [{ role: 'user', content: input }]
        }
        response = HTTParty.post(baseUrl, body: body.to_json, headers: headers)
        return response
    end
end