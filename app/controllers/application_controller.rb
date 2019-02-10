class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    add_flash_types :success, :danger, :info

    def view_handler(resp, legend, controller)
        if resp.success?
            @chart_data = helpers.json_parser(resp)
            @legend = legend
            @controller = controller
            @currency = legend.downcase
            render 'shared/shared_view'
        else
            helpers.error_alert
        end
    end

end
