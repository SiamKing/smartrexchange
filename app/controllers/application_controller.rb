class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    add_flash_types :success, :danger, :info
    
    INTERDAY = "interday"
    INTRADAY = "intraday"
    WEEK = "/week"
    MONTH = "/month"
    MONTHS = "/months"
    YEAR = "/year"
end
