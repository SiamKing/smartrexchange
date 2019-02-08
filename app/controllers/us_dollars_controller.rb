class UsDollarsController < ApplicationController

    def one_day
        @resp = Faraday.get('https://api.cotacoes.uol.com/currency/intraday/list?format=JSON&fields=askvalue,date&currency=1')

        @request = JSON.parse(@resp.body)
    end

    def one_week
        @resp = Faraday.get('https://api.cotacoes.uol.com/currency/interday/list/week?format=JSON&fields=askvalue,date&currency=1')

        @request = JSON.parse(@resp.body)
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
