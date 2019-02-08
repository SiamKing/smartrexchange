class UsDollarsController < ApplicationController

    def one_day
        @chart_data = helpers.api_call('intraday', '', '1')
    end

    def one_week
        @chart_data = helpers.api_call('interday', '/week', '1')
    end
    
    def one_month
        @chart_data = helpers.api_call('interday', '/month', '1')
        
    end

    def three_month
        @chart_data = helpers.api_call('interday', '/months', '1')
    end
    
    def one_year
        @chart_data = helpers.api_call('interday', '/year', '1')
    end
end
