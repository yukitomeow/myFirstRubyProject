class WeightHistory2sController < ApplicationController
  before_action :set_weight_history2, only: %i[ show edit update destroy ]

  # GET /weight_history2s or /weight_history2s.json
  def index
    @weight_history2s = WeightHistory2.all
  end

  # GET /weight_history2s/1 or /weight_history2s/1.json
  def show
  end

  # GET /weight_history2s/new
  def new
    @weight_history2 = WeightHistory2.new
  end

  # GET /weight_history2s/1/edit
  def edit
  end

  # POST /weight_history2s or /weight_history2s.json
  def create
    @weight_history2 = WeightHistory2.new(weight_history2_params)

    respond_to do |format|
      if @weight_history2.save
        format.html { redirect_to @weight_history2, notice: "Weight history2 was successfully created." }
        format.json { render :show, status: :created, location: @weight_history2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @weight_history2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weight_history2s/1 or /weight_history2s/1.json
  def update
    respond_to do |format|
      if @weight_history2.update(weight_history2_params)
        format.html { redirect_to @weight_history2, notice: "Weight history2 was successfully updated." }
        format.json { render :show, status: :ok, location: @weight_history2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @weight_history2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_history2s/1 or /weight_history2s/1.json
  def destroy
    @weight_history2.destroy
    respond_to do |format|
      format.html { redirect_to weight_history2s_url, notice: "Weight history2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_history2
      @weight_history2 = WeightHistory2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def weight_history2_params
      params.require(:weight_history2).permit(:user_id, :weight, :memo)
    end
end
