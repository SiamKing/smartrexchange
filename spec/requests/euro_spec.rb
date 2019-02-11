require 'rails_helper'

RSpec.describe Euro, type: :request do

    describe "one day euro view" do
        it "successfully renders one_day view" do
            view_test("euros", "euro", "one", "day", "aud")
        end

        it "routes succesfully to one_day view when link is clicked", js: true do
            view_link_test("euros", "one_week", "1 Day", "one-week", "one-day", "euro", "aud")
        end

    end

    describe "one week euro view" do
        it "successfully renders one_week view" do
            view_test("euros", "euro", "one", "week", "aud")
        end

        it "routes succesfully to one_week view when link is clicked", js: true do
            view_link_test("euros", "one_day", "1 Week", "one-day", "one-week", "euro", "aud")
        end

    end
    
    describe "one month euro view" do
        it "successfully renders one_month view" do
            view_test("euros", "euro", "one", "month", "aud")
        end

        it "routes succesfully to one_month view when link is clicked", js: true do
            view_link_test("euros", "one_week", "1 Month", "one-week", "one-month", "euro", "aud")
        end

    end

    describe "three month euro view" do
        it "successfully renders three month view" do
            view_test("euros", "euro", "three", "month", "aud")
        end

        it "routes succesfully to three_month view when link is clicked", js: true do
            view_link_test("euros", "one_month", "3 Month", "one-month", "three-month", "euro", "aud")
        end

    end

    describe "one year euro view" do
        it "successfully renders one year view" do
            view_test("euros", "euro", "one", "year", "aud")
        end

        it "routes succesfully to one year view when link is clicked", js: true do
            view_link_test("euros", "three_month", "1 Year", "three-month", "one-year", "euro", "aud")
        end

    end
end
