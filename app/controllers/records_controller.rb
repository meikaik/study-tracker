class RecordsController < ApplicationController
  def index
    @records = Record.all
  end

  def create
    @record = Record.new(record_params)

    if @record.save
      render json: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  private

  def record_params
    params.require(:record).permit(:date, :important_event, :class_1, :class_2,
                                   :class_3, :class_4, :class_5, :side_project,
																	 :gym, :other)
  end
end
