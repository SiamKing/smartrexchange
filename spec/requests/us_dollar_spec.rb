require 'rails_helper'

RSpec.describe UsDollar, type: :request do
    describe "request one day view" do
        it "successfully renders one_day template" do
            get usd_one_day_path
            expect(response).to be_successful
        end
    end
end
