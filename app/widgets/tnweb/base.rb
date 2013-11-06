module Widgets
  module Tnweb
    class Base < ErpApp::Widgets::Base
  
      def index
	@websites = Website.all
        render :view => :index

      end
      # Added 
# GET /websites/1
# GET /websites/1.json
self.view_paths = File.join(File.dirname(__FILE__),"/views")
  def show
    @website = Website.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @website }
    end
  end

  # GET /websites/new
  # GET /websites/new.json
  def new
  @website = Website.new
   respond_to do |format|
     format.html  # new.html.erb
     format.json  { render :json => @website }
   end
  end

  # Website /websites
  # Website /websites.json
  def create
  @website = Website.new(params[:website])
  #@website.save
  #redirect_to @website
  respond_to do |format|
    if @website.save
      format.html { redirect_to @website, notice: 'Website was successfully created.' }
      format.json { render json: @website, status: :created, location: @website }
    else
      format.html { render action: "new" }
      format.json { render json: @website.errors, status: :unprocessable_entity }
    end
  end
  end


  # GET /websites/1/edit
  def edit
    @website = Website.find(params[:id])
  end

  # PUT /websites/1
  # PUT /websites/1.json
  def update
    @website = Website.find(params[:id])

    respond_to do |format|
      if @website.update_attributes(params[:website])
        format.html  { redirect_to(@website,
                                   :notice => 'Website was successfully updated.') }
        format.json  { head :no_content }
      else
        format.html  { render :action => "edit" }
        format.json  { render :json => @website.errors,
                              :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /websites/1
  # DELETE /websites/1.json
  def destroy
    @website = Website.find(params[:id])
    @website.destroy

    respond_to do |format|
      format.html { redirect_to websites_url }
      format.json { head :no_content }
    end
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
