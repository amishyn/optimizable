module Optimizable
  class OptimizationsController < Optimizable.parent_controller
    # GET /optimizations
    # GET /optimizations.json
    def index
      @optimizations = Optimization.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @optimizations }
      end
    end

    # GET /optimizations/1
    # GET /optimizations/1.json
    def show
      @optimization = Optimization.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @optimization }
      end
    end

    # GET /optimizations/new
    # GET /optimizations/new.json
    def new
      @optimization = Optimization.new
      @optimization.optimizable = params[:optimizable_type].camelize.constantize.find(params[:optimizable_id])
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @optimization }
      end
    end

    # GET /optimizations/1/edit
    def edit
      @optimization = Optimization.find(params[:id])
    end

    # POST /optimizations
    # POST /optimizations.json
    def create
      @optimization = Optimization.new(params[:optimizable_optimization])

      respond_to do |format|
        if @optimization.save
          format.html { redirect_to optimization_path(@optimization), notice: 'Optimization was successfully created.' }
          format.json { render json: @optimization, status: :created, location: @optimization }
        else
          format.html { render action: "new" }
          format.json { render json: @optimization.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /optimizations/1
    # PUT /optimizations/1.json
    def update
      @optimization = Optimization.find(params[:id])

      respond_to do |format|
        if @optimization.update_attributes(params[:optimizable_optimization])
          format.html { redirect_to optimization_path(@optimization), notice: 'Optimization was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @optimization.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /optimizations/1
    # DELETE /optimizations/1.json
    def destroy
      @optimization = Optimization.find(params[:id])
      @optimization.destroy

      respond_to do |format|
        format.html { redirect_to optimizations_url }
        format.json { head :ok }
      end
    end
  end
end