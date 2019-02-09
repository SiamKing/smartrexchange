class EurosController < ApplicationController

    def one_day
        resp = helpers.api_call(INTRADAY, '', EURO_CODE)
        view_handler(resp)
    end

    def one_week
        resp = helpers.api_call(INTERDAY, WEEK, EURO_CODE)
        view_handler(resp)
    end

    def one_month
        resp = helpers.api_call(INTERDAY, MONTH, EURO_CODE)
        view_handler(resp)
    end

    private

    def view_handler(resp)
        if resp.success?
            @chart_data = helpers.json_parser(resp)
            @legend = EURO
            @controller = "euros"
            @currency = "euro"
            render 'shared/shared_view'
        else
            helpers.error_alert
        end
        
    end
end
