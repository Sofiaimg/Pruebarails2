class PendingsController < ApplicationController
  def update
    @pending = PendingTask.find(params[:id])
    @pending.toggle!(:done)
    redirect_to root_path, notice: 'cambio realizado exitosamente'
  end
end
