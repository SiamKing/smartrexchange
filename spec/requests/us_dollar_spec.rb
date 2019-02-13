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
            view_test("us_dollars", "usd", "one", "week", "aud")
        end

        it "routes to one_week view when link is clicked", js: true do
            view_link_test("us_dollars", "one_day", "1 Week", "one-day", "one-week", "usd", "aud")
        end
    end

    describe "one month route/view" do
        it "successfully renders one_month view" do
            view_test("us_dollars", "usd", "one", "month", "aud")
        end

        it "routes to one_month view when link is clicked", js: true do
            view_link_test("us_dollars", "one_week", "1 Month", "one-week", "one-month", "usd", "aud")
        end
    end

    describe "three month route/view" do
        it "successfully renders three_month view" do
            view_test("us_dollars", "usd", "three", "month", "aud")
        end
        
        it "routes to three_month view when link is clicked", js: true do
            view_link_test("us_dollars", "one_month", "3 Month", "one-month", "three-month", "usd", "aud")
        end
    end

    describe "one year route/view" do
        it "successfully renders one_year view" do
            view_test("us_dollars", "usd", "one", "year", "aud")
        end
        
        it "routes to one_year view when link is clicked", js: true do
            view_link_test("us_dollars", "three_month", "1 Year", "three-month", "one-year", "usd", "aud")
        end

    end

    describe "unknown route redirects to usd one day path" do
        it "redirects to usd one day path" do
            visit "/foo"

            expect(page).to have_current_path(usd_one_day_path)
        end
    end
end
