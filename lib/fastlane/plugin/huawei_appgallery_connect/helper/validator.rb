require 'fastlane_core/ui/ui'

module Validator
    UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")
    class ParamsValidator
        attr_accessor :params, :token

        def initialize params, token
            @params = params
            @token = token
        end
        
        def token_exists?
            if @token
                true
            else
                UI.message("Cannot retrieve token, please check your client ID and client secret")
                false
            end
        end

        def privacy_policy_url_exists?
            if @params[:privacy_policy_url]
                true
            else
                UI.message("A problem occured with the privacy policy url, current value: #{@params[:privacy_policy_url]}")
                false
            end
        end

        def client_id_exists?
            if @params[:client_id]
                true
            else
                UI.message("A problem occured with the client_id, current value: #{@params[:client_id]}")
                false
            end
        end

        def app_id_exists?
            if @params[:app_id]
                true
            else
                UI.message("A problem occured with the app_id, current value: #{@params[:app_id]}")
                false
            end
        end 

        def apk_path_exists?
            if @params[:apk_path]
                true
            else
                UI.message("A problem occured with the apk_path, current value: #{@params[:apk_path]}")
                false
            end
        end
    end
end