require_dependency "auth_hub/application_controller"

#controller che contiene la logica per visualizzare i tasti delle app in base all'utente loggato

module AuthHub
  class DashboardController < ApplicationController
    before_action :authenticate_user!
    protect_from_forgery prepend: true
    
    #pagina con blocchi per vari servizi, path di base
    def admin_dashboard
    
    end
    

    
    
  end
end
