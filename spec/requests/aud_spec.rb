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
            visit aud_one_day_path
            click_link "1 Week"

            expect(page).to have_no_css('#aud-one-day.active')
            expect(page).to have_css('#aud-one-week.active')
            expect(page).to have_css('#aud.active')
            expect(page).to have_no_css('#usd.active')
        end

    end

    describe "one month AUD view" do
        it "successfully renders one_month view" do
            view_test("auds", "aud", "one", "month", "usd")
        end

        it "routes succesfully to one_month view when link is clicked", js: true do
            visit aud_one_week_path
            click_link "1 Month"

            expect(page).to have_no_css('#aud-one-week.active')
            expect(page).to have_css('#aud-one-month.active')
            expect(page).to have_css('#aud.active')
            expect(page).to have_no_css('#usd.active')
        end

    end

    describe "three month AUD view" do
        it "successfully renders three_month view" do
            view_test("auds", "aud", "three", "month", "usd")
        end

        it "routes succesfully to three_month view when link is clicked", js: true do
            visit aud_one_month_path
            click_link "3 Month"

            expect(page).to have_no_css('#aud-one-month.active')
            expect(page).to have_css('#aud-three-month.active')
            expect(page).to have_css('#aud.active')
            expect(page).to have_no_css('#usd.active')
        end

    end
    
    describe "one year AUD view" do
        it "successfully renders one_year view" do
            view_test("auds", "aud", "one", "year", "usd")
        end

        it "routes succesfully to one year view when link is clicked", js: true do
            visit aud_three_month_path
            click_link "1 Year"

            expect(page).to have_no_css('#aud-three-month.active')
            expect(page).to have_css('#aud-one-year.active')
            expect(page).to have_css('#aud.active')
            expect(page).to have_no_css('#usd.active')
        end

    end


end
