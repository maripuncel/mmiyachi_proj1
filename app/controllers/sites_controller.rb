class SitesController < ApplicationController
  # GET /sites
  # GET /sites.json
  # Show HTML page of site id numbers and visit counts
  def index
    @sites = Site.all
  end

  # GET /sites/1
  # GET /sites/1.json
  def show
    @site = Site.find(params[:id])
  end

  # GET /sites/new
  # GET /sites/new.json
  def new
    @site = Site.new
  end

  # GET /sites/1/visit
  # Register visit to [id number] site
  def visit
    @site = Site.find(params[:id])
    @viewcount = @site.count + 1
    @site.update_attributes(count: @viewcount)
  end

  # POST /sites
  # POST /sites.json
  def create
    @site = Site.new(params[:site])
  end

  # PUT /sites/1
  # PUT /sites/1.json
  def update
    @site = Site.find(params[:id])
  end

  # DELETE /sites/1
  # DELETE /sites/1.json
  def destroy
    @site = Site.find(params[:id])
    @site.destroy
  end
end
