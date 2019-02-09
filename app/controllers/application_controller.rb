class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    add_flash_types :success, :danger, :info
    
    USD_CODE = '1'
    EURO_CODE = '5'
    AUD_CODE = '19'
    INTERDAY = "interday"
    INTRADAY = "intraday"
    WEEK = "/week"
    MONTH = "/month"
    MONTHS = "/months"
    YEAR = "/year"
end
