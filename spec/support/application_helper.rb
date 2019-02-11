require 'rails_helper'

module ApplicationHelper

    def view_test(controller, currency, number, time, foreign_currency)
        visit "/#{controller}/#{number}_#{time}"

        expect(page).to have_css("#chart-1")
        expect(page).to have_css("##{currency}-#{number}-#{time}.active")
        expect(page).to have_css("##{currency}.active")
        expect(page).to have_no_css("##{foreign_currency}.active")
    end

    def view_link_test(controller, view, view_link, inactive_class, active_class, currency, foreign_currency)
        visit "/#{controller}/#{view}"
        click_link view_link

        expect(page).to have_no_css("##{currency}-#{inactive_class}.active")
        expect(page).to have_css("##{currency}-#{active_class}.active")
        expect(page).to have_css("##{currency}.active")
        expect(page).to have_no_css("##{foreign_currency}.active")
    end

end