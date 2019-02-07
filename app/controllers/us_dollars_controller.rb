class UsDollarsController < ApplicationController

    def one_day
        @resp = Faraday.get('https://api.cotacoes.uol.com/currency/intraday/list?format=JSON&fields=askvalue,date&currency=1')

        @request = JSON.parse(@resp.body)
    end
end
