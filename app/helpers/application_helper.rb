module ApplicationHelper

    def api_call(type, period, currency)
        Faraday.get("https://api.cotacoes.uol.com/currency/#{type}/list#{period}?format=JSON&fields=askvalue,date&currency=#{currency}")
    end

    def json_parser(response)
        @body = JSON.parse(response.body)
        @body['docs'].inject({}) {|res, v| res[v['date']] = v['askvalue']; res}
    end

    def error_alert
        flash[:danger] = "Whoops. That didn't work. Please try again."
    end

end
