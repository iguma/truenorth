module Widgets
  module Tnweb
    class Base < ErpApp::Widgets::Base

      self.view_paths = File.join(File.dirname(__FILE__),"/views")

      def index

        ajax = request.xhr?

	      @websites = Website.all
        if ajax
          render :update => {:id => 'widget_container', :view => :index}
        else
          render :view => :index
        end
      end

      def show
        @website = Website.find(params[:id])
        render :update => {:id => "widget_container", :view => :show}
      end

      def new
        @website = Website.new
        render :update => {:id => 'widget_container', :view => :new}
        #render :view => :new
      end

      def create

        @website = Website.new
        @website.name = params[:name]
        @website.title = params[:title]
        @website.subtitle = params[:subtitle]

        begin
          if @website.save

            @websites = Website.all
            render :update => {:id => 'widget_container', :view => :index}

          else
            render :update => {:id => "results_div", :view => :error}
          end
        rescue Exception => ex
          logger.error ex.message
          logger.error ex.backtrace
          render :update => {:id => "results_div", :view => :error}
        end
      end

      def edit
        @website = Website.find(params[:id])
        render :update => {:id => "widget_container", :view => :edit}
      end

      def update
        @website = Website.find(params[:id])

        @website.name=params[:name]
        @website.title=params[:title]
        @website.subtitle=params[:subtitle]
        @website.save

        @websites = Website.all
        render :update => {:id => 'widget_container', :view => :index}
      end

      def destroy
        @website = Website.find(params[:id])
        @website.destroy

        @websites = Website.all
        render :update => {:id => 'widget_container', :view => :index}
      end

	#End		
      #should not be modified
      #modify at your own risk
      def locate
        File.dirname(__FILE__)
      end
  
      class << self
        def title
          "trueweb"
        end
    
        def widget_name
          File.basename(File.dirname(__FILE__))
        end
      end
    end#Base
  end#Tnweb
end#Widgets
