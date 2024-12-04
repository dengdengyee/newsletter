class EmailHistoriesController < ApplicationController
  before_action :set_email_history, only: %i[ show edit update destroy ]

  # GET /email_histories or /email_histories.json
  def index
    @email_histories = EmailHistory.all.reverse
  end

  # GET /email_histories/1 or /email_histories/1.json
  def show
  end

  # GET /email_histories/new
  def new
    @email_history = EmailHistory.new
  end

  # GET /email_histories/1/edit
  def edit
  end

  # POST /email_histories or /email_histories.json
  def create
    @email_history = EmailHistory.new(email_history_params)

    respond_to do |format|
      if @email_history.save
        format.html { redirect_to @email_history, notice: "Email history was successfully created." }
        format.json { render :show, status: :created, location: @email_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @email_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /email_histories/1 or /email_histories/1.json
  def update
    respond_to do |format|
      if @email_history.update(email_history_params)
        format.html { redirect_to @email_history, notice: "Email history was successfully updated." }
        format.json { render :show, status: :ok, location: @email_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @email_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_histories/1 or /email_histories/1.json
  def destroy
    @email_history.destroy!

    respond_to do |format|
      format.html { redirect_to email_histories_path, status: :see_other, notice: "Email history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_history
      @email_history = EmailHistory.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def email_history_params
      params.expect(email_history: [ :receiver, :subject, :body ])
    end
end
