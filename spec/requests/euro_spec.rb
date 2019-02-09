require 'rails_helper'

RSpec.describe Euro, type: :request do

    describe "one day euro view" do
        it "successfully renders one_day view" do
            visit euro_one_day_path

            expect(page).to have_css('#chart-1')
            expect(page).to have_css('#euro-one-day.active')
            expect(page).to have_css('#euro.active')
            expect(page).to have_no_css('#usd.active')
        end

        it "routes succesfully to one_day view when link is clicked" do
            visit euro_one_week_path
            click_link "1 Day"

            expect(page).to have_no_css('#euro-one-week.active')
            expect(page).to have_css('#euro-one-day.active')
            expect(page).to have_css('#euro.active')
            expect(page).to have_no_css('#usd.active')
        end

    end

    describe "one week euro view" do
        it "successfully renders one_week view" do
            visit euro_one_week_path

            expect(page).to have_css('#chart-1')
            expect(page).to have_css('#euro-one-week.active')
            expect(page).to have_css('#euro.active')
            expect(page).to have_no_css('#usd.active')
        end

        it "routes succesfully to one_week view when link is clicked" do
            visit euro_one_day_path
            click_link "1 Week"

            expect(page).to have_no_css('#euro-one-day.active')
            expect(page).to have_css('#euro-one-week.active')
            expect(page).to have_css('#euro.active')
        end

    end
end
