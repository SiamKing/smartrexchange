class UsDollarsController < ApplicationController
    CURRENCY_CODE = '1'

    def one_day
        resp = helpers.api_call(INTRADAY, '', CURRENCY_CODE)
        if resp.success?
            @chart_data = helpers.json_parser(resp)
        else
            helpers.error_alert
        end
    end

    def one_week
        resp = helpers.api_call(INTERDAY, WEEK, CURRENCY_CODE)
        if resp.success?
            @chart_data = helpers.json_parser(resp)
        else
            helpers.error_alert
        end
    end
    
    def one_month
        resp = helpers.api_call(INTERDAY, MONTH, CURRENCY_CODE)
        if resp.success?
            @chart_data = helpers.json_parser(resp)
        else
            helpers.error_alert
        end
        
    end

    def three_month
        resp = helpers.api_call(INTERDAY, MONTHS, CURRENCY_CODE)
        if resp.success?
            @chart_data = helpers.json_parser(resp)
        else
            helpers.error_alert
        end
    end
    
    def one_year
        resp = helpers.api_call(INTERDAY, YEAR, CURRENCY_CODE)
        if resp.success?
            @chart_data = helpers.json_parser(resp)
        else
            helpers.error_alert
        end
    end
end
