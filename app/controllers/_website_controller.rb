class WebsiteController < ApplicationController
  def index
    @websites = Website.all

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @websites }
    end
  end
  def new
  end
end
#module ErpApp
#  module Desktop
#    module ExampleApp
#      class WebsiteController < ::ErpApp::Desktop::BaseController
#      def index
#	end
#      end
#    end #ExampleApp
#  end #Desktop
#end #ErpApp
