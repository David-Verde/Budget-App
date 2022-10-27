class PaymentsController < ApplicationController
  before_action :authenticate_user!
  before_action :acq_category
  before_action :acq_categories
  before_action :set_payment, only: %i[show edit update destroy]

  # GET /payments or /payments.json
  def index
    @payments = @category.payments.includes(:categories_payments).includes([:categories])
  end

  # GET /payments/1 or /payments/1.json
  def show; end

  # GET /payments/new
  def new
    @payment = current_user.payments.build
  end

  # GET /payments/1/edit
  def edit; end

  # POST /payments or /payments.json
  def create
    @payment = current_user.payments.build(payment_params)
    respond_to do |format|
      if @payment.save
        @payment.categories << acq_categories
        format.html { redirect_to category_payments_path(@category), notice: 'payment was successfully created.' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1 or /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to payment_url(@payment), notice: 'payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1 or /payments/1.json
  def destroy
    @payment.destroy

    respond_to do |format|
      format.html { redirect_to category_payments_path, notice: 'payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_payment
    @payment = Payment.find(params[:id])
  end

  def acq_category
    @category = Category.find(params[:category_id])
  end

  def acq_categories
    categories = []
    selected_category = Category.find(params[:category_id])
    extra_categories = params[:categories] ? Category.where(id: params[:categories][:category_ids]).to_a : []
    categories << selected_category << extra_categories
    categories.flatten
  end

  # Only allow a list of trusted parameters through.
  def payment_params
    params.require(:payment).permit(:name, :amount, :user_id)
  end
end
