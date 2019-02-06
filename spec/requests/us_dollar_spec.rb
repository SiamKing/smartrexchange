require 'rails_helper'

RSpec.describe UsDollar, type: :request do
    describe "request one day view" do
        it "successfully renders one_day template" do
            get usd_one_day_path
            expect(response).to be_successful
        end

        it "queries Cotacoes API for one day ratio" do
            uri = URI('https://api.cotacoes.uol.com/currency/intraday/list/month?format=JSON&fields=askvalue,date&currency=1')

            response = Net::HTTP.get(uri)

            expect(response).to be_an_instance_of(String)
        end
    end
end
