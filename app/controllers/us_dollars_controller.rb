class UsDollarsController < ApplicationController

    def one_day
        @chart_data = helpers.api_call('intraday', '')
    end

    def one_week
        @chart_data = helpers.api_call('interday', '/week')
    end
    
    def one_month
        @resp = Faraday.get('https://api.cotacoes.uol.com/currency/interday/list/month?format=JSON&fields=askvalue,date&currency=1')

        @request = JSON.parse(@resp.body)
    end

    def three_month
        @resp = Faraday.get('https://api.cotacoes.uol.com/currency/interday/list/months?format=JSON&fields=askvalue,date&currency=1')

        @request = JSON.parse(@resp.body)
    end
    
    def one_year
        @resp = Faraday.get('https://api.cotacoes.uol.com/currency/interday/list/year?format=JSON&fields=askvalue,date&currency=1')

        @request = JSON.parse(@resp.body)
    end
end
