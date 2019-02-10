class AudsController < ApplicationController

    def one_day
        resp = helpers.api_call(INTRADAY, '', AUD_CODE)
        view_handler(resp, AUD, AUD_CONTROLLER)
    end

    def one_week
        resp = helpers.api_call(INTERDAY, WEEK, AUD_CODE)
        view_handler(resp, AUD, AUD_CONTROLLER)
    end

    def one_month
        resp = helpers.api_call(INTERDAY, MONTH, AUD_CODE)
        view_handler(resp, AUD, AUD_CONTROLLER)
    end

    def three_month
        resp = helpers.api_call(INTERDAY, MONTHS, AUD_CODE)
        view_handler(resp, AUD, AUD_CONTROLLER)
    end
end
