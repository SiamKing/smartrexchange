class EurosController < ApplicationController

    def one_day
        resp = helpers.api_call(INTRADAY, '', EURO_CODE)
        if resp.success?
            @chart_data = helpers.json_parser(resp)
        else
            helpers.error_alert
        end
    end


end
