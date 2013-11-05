module ErpApp
  module Organizer
    module IgOrg
      class BaseController < ::ErpApp::Organizer::BaseController

        def menu
          render :json => [{:text => 'Menu Item', :leaf => true, :iconCls => 'icon-igorg', :applicationCardId => "ig_org_example_panel"}]
        end

      end #BaseController
    end #IgOrg
  end #Organizer
end #ErpApp