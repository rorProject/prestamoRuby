class RubyonRailsController < ApplicationController
  before_action :set_rubyon_rail, only: [:show, :edit, :update, :destroy]

  # GET /rubyon_rails
  # GET /rubyon_rails.json
  def index
    @rubyon_rails = RubyonRail.all
  end

  # GET /rubyon_rails/1
  # GET /rubyon_rails/1.json
  def show
  end

  # GET /rubyon_rails/new
  def new
    @rubyon_rail = RubyonRail.new
  end

  # GET /rubyon_rails/1/edit
  def edit
  end

  # POST /rubyon_rails
  # POST /rubyon_rails.json
  def create
    @rubyon_rail = RubyonRail.new(rubyon_rail_params)

    respond_to do |format|
      if @rubyon_rail.save
        format.html { redirect_to @rubyon_rail, notice: 'Rubyon rail was successfully created.' }
        format.json { render :show, status: :created, location: @rubyon_rail }
      else
        format.html { render :new }
        format.json { render json: @rubyon_rail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubyon_rails/1
  # PATCH/PUT /rubyon_rails/1.json
  def update
    respond_to do |format|
      if @rubyon_rail.update(rubyon_rail_params)
        format.html { redirect_to @rubyon_rail, notice: 'Rubyon rail was successfully updated.' }
        format.json { render :show, status: :ok, location: @rubyon_rail }
      else
        format.html { render :edit }
        format.json { render json: @rubyon_rail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubyon_rails/1
  # DELETE /rubyon_rails/1.json
  def destroy
    @rubyon_rail.destroy
    respond_to do |format|
      format.html { redirect_to rubyon_rails_url, notice: 'Rubyon rail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubyon_rail
      @rubyon_rail = RubyonRail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rubyon_rail_params
      params.fetch(:rubyon_rail, {})
    end
end
