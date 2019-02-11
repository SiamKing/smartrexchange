require 'rails_helper'

RSpec.describe AUD, type: :request do

    describe "one day AUD view" do
        it "successfully renders one_day view" do
            view_test("auds", "aud", "one", "day", "usd")
        end

        it "routes succesfully to one_day view when link is clicked", js: true do
            view_link_test("auds", "one_week", "1 Day", "one-week", "one-day", "aud", "usd")
        end

    end

    describe "one week AUD view" do
        it "successfully renders one_week view" do
            view_test("auds", "aud", "one", "week", "usd")
        end

        it "routes succesfully to one_week view when link is clicked", js: true do
            view_link_test("auds", "one_day", "1 Week", "one-day", "one-week", "aud", "usd")
        end

    end

    describe "one month AUD view" do
        it "successfully renders one_month view" do
            view_test("auds", "aud", "one", "month", "usd")
        end

        it "routes succesfully to one_month view when link is clicked", js: true do
            view_link_test("auds", "one_week", "1 Month", "one-week", "one-month", "aud", "usd")
        end

    end

    describe "three month AUD view" do
        it "successfully renders three_month view" do
            view_test("auds", "aud", "three", "month", "usd")
        end

        it "routes succesfully to three_month view when link is clicked", js: true do
            view_link_test("auds", "one_month", "3 Month", "one-month", "three-month", "aud", "usd")
        end

    end
    
    describe "one year AUD view" do
        it "successfully renders one_year view" do
            view_test("auds", "aud", "one", "year", "usd")
        end

        it "routes succesfully to one year view when link is clicked", js: true do
            view_link_test("auds", "three_month", "1 Year", "three-month", "one-year", "aud", "usd")
        end

    end


end
