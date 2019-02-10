class UsDollarsController < ApplicationController

    def one_day
        resp = helpers.api_call(INTRADAY, '', USD_CODE)
        view_handler(resp, USD, USD_CONTROLLER)
    end

    def one_week
        resp = helpers.api_call(INTERDAY, WEEK, USD_CODE)
        view_handler(resp, USD, USD_CONTROLLER)
    end

    def one_month
        resp = helpers.api_call(INTERDAY, MONTH, USD_CODE)
        view_handler(resp, USD, USD_CONTROLLER)
    end

    def three_month
        resp = helpers.api_call(INTERDAY, MONTHS, USD_CODE)
        view_handler(resp, USD, USD_CONTROLLER)
    end
    
    def one_year
        resp = helpers.api_call(INTERDAY, YEAR, USD_CODE)
        view_handler(resp, USD, USD_CONTROLLER)
    end

end
