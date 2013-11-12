module Widgets
  module Customer
    class Base < ErpApp::Widgets::Base

      self.view_paths = File.join(File.dirname(__FILE__),"/views")

      def index
        ajax = request.xhr?
        @individuals = Individual.all
        if ajax
          render :update => {:id => 'widget_container', :view => :index}
        else
          render :view => :index
        end
      end
      def show
        @individual = Individual.find(params[:id])
        render :update => {:id => "widget_container", :view => :show}
      end

      def new
        @individual = Individual.new
        render :update => {:id => 'widget_container', :view => :new}
        #render :view => :new
      end

      def create

        @individual = Individual.new
        @individual.current_personal_title = params[:current_personal_title]
        @individual.current_first_name = params[:current_first_name]
        @individual.current_middle_name = params[:current_middle_name]
        @individual.current_last_name = params[:current_last_name]
        @individual.current_suffix = params[:current_suffix]
        @individual.current_nickname = params[:current_nickname]
        @individual.current_passport_number = params[:current_passport_number]
        @individual.birth_date = params[:birth_date]
        @individual.gender = params[:gender]
        @individual.total_years_work_experience = params[:total_years_work_experience]
        @individual.marital_status = params[:marital_status]
        @individual.social_security_number = params[:social_security_number]
        @individual.comments = params[:comments]


        begin
          if @individual.save

            @individuals = Individual.all
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
        @individual = Individual.find(params[:id])
        render :update => {:id => "widget_container", :view => :edit}
      end

      def update
        @individual = Individual.find(params[:id])

        @individual.current_personal_title=params[:current_personal_title]
        @individual.current_first_name=params[:current_first_name]
        @individual.current_middle_name=params[:current_middle_name]
        @individual.current_last_name=params[:current_last_name]
        @individual.current_suffix=params[:current_suffix]
        @individual.current_nickname=params[:current_nickname]
        @individual.current_passport_number=params[:current_passport_number]
        @individual.birth_date=params[:birth_date]
        @individual.gender=params[:gender]
        @individual.total_years_work_experience=params[:total_years_work_experience]
        @individual.marital_status=params[:marital_status]
        @individual.social_security_number=params[:social_security_number]
        @individual.comments=params[:comments]
        @individual.save


        @individuals = Individual.all
        render :update => {:id => 'widget_container', :view => :index}
      end

      def destroy
        @individual = Individual.find(params[:id])
        @individual.destroy

        @individuals = Individual.all
        render :update => {:id => 'widget_container', :view => :index}
      end

      #should not be modified
      #modify at your own risk
      def locate
        File.dirname(__FILE__)
      end
  
      class << self
        def title
          "customer"
        end
    
        def widget_name
          File.basename(File.dirname(__FILE__))
        end
      end
    end#Base
  end#Customer
end#Widgets
