module Widgets
  module Comments
    class Base < ErpApp::Widgets::Base
  
      def index
        render :view => :index
      end
  
      #should not be modified
      #modify at your own risk
	self.view_paths = File.join(File.dirname(__FILE__),"/views")
      def locate
        File.dirname(__FILE__)
      end
  
      class << self
        def title
          "comments_descr"
        end
    
        def widget_name
          File.basename(File.dirname(__FILE__))
        end
	# Added on 29-10-2013
	def base_layout
	      begin
		file = File.join(File.dirname(__FILE__),"/views/layouts/base.html.erb")
		IO.read(file)
	      rescue
		return nil
	      end
	    end
	# End
      end
    end#Base
  end#Comments
end#Widgets
