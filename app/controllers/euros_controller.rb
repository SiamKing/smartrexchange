class EurosController < ApplicationController

    def one_day
        resp = helpers.api_call(INTRADAY, '', EURO_CODE)
        view_handler(resp, EURO, EURO_CONTROLLER)
    end

    def one_week
        resp = helpers.api_call(INTERDAY, WEEK, EURO_CODE)
        view_handler(resp, EURO, EURO_CONTROLLER)
    end

    def one_month
        resp = helpers.api_call(INTERDAY, MONTH, EURO_CODE)
        view_handler(resp, EURO, EURO_CONTROLLER)
    end

    def three_month
        resp = helpers.api_call(INTERDAY, MONTHS, EURO_CODE)
        view_handler(resp, EURO, EURO_CONTROLLER)
    end
    
    def one_year
        resp = helpers.api_call(INTERDAY, YEAR, EURO_CODE)
        view_handler(resp, EURO, EURO_CONTROLLER)
    end

end
