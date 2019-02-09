require 'rails_helper'

RSpec.describe Euro, type: :request do

    describe "request one day view" do
        it "successfully renders one_day view" do
            visit euro_one_day_path
            expect(page).to have_css('#chart-1')
            expect(page).to have_css('#euro-one-day.active')
            expect(page).to have_css('#euro.active')
            expect(page).to have_not_css('#usd.active')
        end

    end
end
