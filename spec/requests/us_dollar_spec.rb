require 'rails_helper'

RSpec.describe UsDollar, type: :request do
    describe "request one day view" do
        it "successfully renders one_day view" do
            view_test("us_dollars", "usd", "one", "day", "aud")
        end

        it "routes to one_day view when link is clicked", js: true do
            view_link_test("us_dollars", "one_week", "1 Day", "one-week", "one-day", "usd", "aud")
        end
    end

    describe "one week route/view" do
        it "successfully renders one_week view" do
            visit usd_one_week_path
            expect(page).to have_css('#chart-1')
            expect(page).to have_css('#usd-one-week.active')
            expect(page).to have_css('#usd.active')
        end

        it "routes to one_week view when link is clicked", js: true do
            visit usd_one_day_path
            click_link "1 Week"

            expect(page).to have_no_css('#usd-one-day.active')
            expect(page).to have_css('#usd-one-week.active')
            expect(page).to have_css('#usd.active')
        end
    end

    describe "one month route/view" do
        it "successfully renders one_month view" do
            visit usd_one_month_path

            expect(page).to have_css('#chart-1')
            expect(page).to have_no_css('#usd-one-week.active')
            expect(page).to have_css('#usd-one-month.active')
            expect(page).to have_css('#usd.active')
        end

        it "routes to one_month view when link is clicked", js: true do
            visit usd_one_week_path
            click_link "1 Month"

            expect(page).to have_css('#chart-1')
            expect(page).to have_no_css('#usd-one-week.active')
            expect(page).to have_css('#usd-one-month.active')
            expect(page).to have_css('#usd.active')
        end
    end

    describe "three month route/view" do
        it "successfully renders three_month view" do
            visit usd_three_month_path

            expect(page).to have_css('#chart-1')
            expect(page).to have_no_css('#usd-one-month.active')
            expect(page).to have_css('#usd-three-month.active')
            expect(page).to have_css('#usd.active')
        end
        
        it "routes to three_month view when link is clicked", js: true do
            visit usd_one_month_path
            click_link "3 Month"

            expect(page).to have_css('#chart-1')
            expect(page).to have_no_css('#usd-one-month.active')
            expect(page).to have_css('#usd-three-month.active')
            expect(page).to have_css('#usd.active')
        end
    end

    describe "one year route/view" do
        it "successfully renders one_year view" do
            visit usd_one_year_path

            expect(page).to have_css('#chart-1')
            expect(page).to have_no_css('#usd-one-month.active')
            expect(page).to have_css('#usd-one-year.active')
            expect(page).to have_css('#usd.active')
        end
        
        it "routes to one_year view when link is clicked", js: true do
            visit usd_one_month_path
            click_link "1 Year"

            expect(page).to have_css('#chart-1')
            expect(page).to have_no_css('#usd-three-month.active')
            expect(page).to have_css('#usd-one-year.active')
            expect(page).to have_css('#usd.active')
        end

    end
end
