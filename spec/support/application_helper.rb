require 'rails_helper'

module ApplicationHelper

    def view_test(controller, currency, number, time, foreign_currency)
        visit "/#{controller}/#{number}_#{time}"

        expect(page).to have_css("#chart-1")
        expect(page).to have_css("##{currency}-#{number}-#{time}.active")
        expect(page).to have_css("##{currency}.active")
        expect(page).to have_no_css("##{foreign_currency}.active")
    end

end