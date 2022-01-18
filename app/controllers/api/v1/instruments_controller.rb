module Api
    module V1
        class InstrumentsController < ApplicationController
            rescue_from ActiveRecord::RecordNotFound, :with => :render_404
            def index
                instruments = Instrument.order('created_at DESC');
                render json: {status: 'SUCCESS', code: 200, message: 'Loaded Instruments', data: instruments}, status: :ok
            end
            def show
                instrument = Instrument.find(params[:id])
                render json: {status: 'SUCCESS', code: 200, message: 'Loaded Instrument', data: instrument}, status: :ok
            end
            def create
                instrument = Instrument.new(instrument_params)
                if instrument.save
                    render json: {status: 'SUCCESS', code: 201, message: 'Saved Instrument', data: instrument}, status: :ok
                else
                    render json: {status: 'ERROR', code: 422, message: 'Instrument Not Saved', data: instrument.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                instrument = Instrument.find(params[:id])
                instrument.destroy
                render json: {status: 'SUCCESS', code: 202, message: 'Deleted Instrument', data: instrument}, status: :ok
            end

            def update
                instrument = Instrument.find(params[:id]) or not_found
                if instrument.update(:name => instrument_params[:name], :family => instrument_params[:family], :price => instrument_params[:price])
                   render json: {status: 'SUCCESS', code: 204, message: 'Instrument Updated', data: instrument}, status: :ok
                else
                   render json: {status: 'ERROR', code: 422, message: 'Instrument Not Updated', data: instrument.errors}, status: :unprocessable_entity
                end
            end

            def render_404
                render json: {status: 'ERROR', code: 404, message: 'Instrument Not Found'}, status: :not_found
            end

            private

            def instrument_params
                params.permit(:name, :family, :price)
            end
        end
    end 
end
