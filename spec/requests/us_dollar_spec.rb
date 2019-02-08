require 'rails_helper'

RSpec.describe UsDollar, type: :feature do
    describe "request one day view" do
        it "successfully renders one_day view" do
            visit usd_one_day_path
            expect(page).to have_css('#chart-1')
        end

        it "queries Cotacoes API for one day ratio" do
            
            uri = URI('https://api.cotacoes.uol.com/currency/intraday/list?currency=1&fields=askvalue,date&format=JSON')

            response = Net::HTTP.get(uri)

            expect(response).to be_an_instance_of(String)
        end

        it "successfully renders one_week view" do
            visit usd_one_week_path
            expect(page).to have_css('#chart-1')
        end

    end
end
