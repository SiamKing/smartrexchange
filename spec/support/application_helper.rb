require 'rails_helper'

module ApplicationHelper

    def view_test(controller, currency, view, view_class, foreign_currency)
        visit "/#{controller}/#{view}"

        expect(page).to have_css("#chart-1")
        expect(page).to have_css("##{currency}-#{view_class}.active")
        expect(page).to have_css("##{currency}.active")
        expect(page).to have_no_css("##{foreign_currency}.active")
    end

end