class BroadcastsController < ApplicationController
  before_filter :authenticate_user!
  # GET /broadcasts
  # GET /broadcasts.json
  def index
    @broadcasts = Broadcast.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @broadcasts }
    end
  end

  # GET /broadcasts/1
  # GET /broadcasts/1.json
  def show
    @broadcast = Broadcast.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @broadcast }
    end
  end

  # GET /broadcasts/new
  # GET /broadcasts/new.json
  def new
    @broadcast = Broadcast.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @broadcast }
    end
  end

  # POST /broadcasts
  # POST /broadcasts.json
  def create
    @broadcast = Broadcast.new(params[:broadcast])
    current_user.subscribers.each do |subscriber|
      subscriber.send_message(@broadcast.message)
    end
    
    respond_to do |format|
      if @broadcast.save
        format.html { redirect_to @broadcast, notice: 'Broadcast was successfully created.' }
        format.json { render json: @broadcast, status: :created, location: @broadcast }
      else
        format.html { render action: "new" }
        format.json { render json: @broadcast.errors, status: :unprocessable_entity }
      end
    end
  end

end
