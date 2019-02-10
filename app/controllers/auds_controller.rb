class AudsController < ApplicationController

    def one_day
        resp = helpers.api_call(INTRADAY, '', AUD_CODE)
        view_handler(resp, AUD, AUD_CONTROLLER)
    end
end
