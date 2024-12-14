class TestTypesController < ApplicationController
  before_action :set_test_type, only: %i[ show edit update destroy ]

  # GET /test_types or /test_types.json
  def index
    @test_types = TestType.all
  end

  # GET /test_types/1 or /test_types/1.json
  def show
  end

  # GET /test_types/new
  def new
    @test_type = TestType.new
  end

  # GET /test_types/1/edit
  def edit
  end

  # POST /test_types or /test_types.json
  def create
    @test_type = TestType.new(test_type_params)

    respond_to do |format|
      if @test_type.save
        format.html { redirect_to @test_type, notice: "Test type was successfully created." }
        format.json { render :show, status: :created, location: @test_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @test_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_types/1 or /test_types/1.json
  def update
    respond_to do |format|
      if @test_type.update(test_type_params)
        format.html { redirect_to @test_type, notice: "Test type was successfully updated." }
        format.json { render :show, status: :ok, location: @test_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @test_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_types/1 or /test_types/1.json
  def destroy
    @test_type.destroy!

    respond_to do |format|
      format.html { redirect_to test_types_path, status: :see_other, notice: "Test type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_type
      @test_type = TestType.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def test_type_params
      params.expect(test_type: [ :status ])
    end
end
