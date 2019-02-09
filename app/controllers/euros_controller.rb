class EurosController < ApplicationController

    def one_day
        resp = helpers.api_call(INTRADAY, '', EURO_CODE)
        if resp.success?
            success_handler(resp)
        else
            helpers.error_alert
        end
    end

    def one_week
        resp = helpers.api_call(INTERDAY, WEEK, EURO_CODE)
        if resp.success?
            success_handler(resp)
        else
            helpers.error_alert
        end
    end

    private

    def success_handler(resp)
        @chart_data = helpers.json_parser(resp)
        @legend = EURO
        @controller = "euros"
        @currency = "euro"
        render 'shared/shared_view'
    end
end
