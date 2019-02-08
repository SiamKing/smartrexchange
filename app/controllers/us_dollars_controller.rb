class UsDollarsController < ApplicationController
    CURRENCY_CODE = '1'

    def one_day
        @chart_data = helpers.api_call(INTRADAY, '', CURRENCY_CODE)
    end

    def one_week
        @chart_data = helpers.api_call(INTERDAY, WEEK, CURRENCY_CODE)
    end
    
    def one_month
        @chart_data = helpers.api_call(INTERDAY, MONTH, CURRENCY_CODE)
        
    end

    def three_month
        @chart_data = helpers.api_call(INTERDAY, MONTHS, CURRENCY_CODE)
    end
    
    def one_year
        @chart_data = helpers.api_call(INTERDAY, YEAR, CURRENCY_CODE)
    end
end
