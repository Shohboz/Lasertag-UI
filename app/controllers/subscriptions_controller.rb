class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:show, :edit, :update, :destroy]

  # GET /subscriptions
  # GET /subscriptions.json
  def index
    @subscriptions = Subscription.all
  end

  # GET /subscriptions/1
  # GET /subscriptions/1.json
  def show
  end

  # GET /subscriptions/new
  def new
    game = Game.find(params[:game_id])
    @players = Player.where.not(id: game.players)
    @crews = Crew.where.not(id: game.crews)
    @subscription = Subscription.new
  end

  # GET /subscriptions/1/edit
  def edit
    game = @subscription.game
    @players = Player.where.not(id: game.players)
    @crews = Crew.where.not(id: @subscription.crew_id)
  end

  # POST /subscriptions
  # POST /subscriptions.json
  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.activity :params => {:composite_key => "#{@subscription.game_id},#{@subscription.player_id}"}
    respond_to do |format|
      if @subscription.save
        format.html { redirect_to @subscription.game, notice: 'Subscription was successfully created.' }
        format.json { render :show, status: :created, location: @subscription }
      else
        format.html { render :new }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscriptions/1
  # PATCH/PUT /subscriptions/1.json
  def update
    @subscription.activity :params => {:composite_key => "#{@subscription.game_id},#{@subscription.player_id}"}
    respond_to do |format|
      if @subscription.update(subscription_params)        
        format.html { redirect_to @subscription.game, notice: 'Subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @subscription }
      else
        format.html { render :edit }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscriptions/1
  # DELETE /subscriptions/1.json
  def destroy
    @subscription.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def delete_all
    @subscription = Subscription.where(crew_id: params[:crew_id], game_id: params[:game_id])
    @subscription.delete_all
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscription_params
      params[:subscription].permit(:player_id, :crew_id, :game_id)
    end
end
