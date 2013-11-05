module ErpApp
  module Organizer
    module ExampleOrganizerApp
      class BaseController < ::ErpApp::Organizer::BaseController

        def menu
          render :json => [{:text => 'Menu Item', :leaf => true, :iconCls => 'icon-tasks', :applicationCardId => "example_organizer_app_example_panel"}]
        end

      end #BaseController
    end #ExampleOrganizerApp
  end #Organizer
end #ErpApp