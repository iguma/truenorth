module ErpApp
	module Mobile
    module ExampleMobileApp
      class BaseController < ::ErpApp::Mobile::BaseController

        def index
          render :json => {:success => true, :message => 'Hello World'}
        end

      end #BaseController
    end #ExampleMobileApp
  end #Mobile
end #ErpApp