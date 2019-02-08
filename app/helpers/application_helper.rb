module ApplicationHelper

    def api_call(type, period, currency)
        @resp = Faraday.get("https://api.cotacoes.uol.com/currency/#{type}/list#{period}?format=JSON&fields=askvalue,date&currency=#{currency}")

        @request = JSON.parse(@resp.body)
        @request['docs'].inject({}) {|res, v| res[v['date']] = v['askvalue']; res}
    end
end
