class TuitionsController < ApplicationController
  before_action :authenticate_user!
  expose(:tuitions) { Tuition.all }
  expose(:students) { Student.all }
  expose(:tuition, attributes: :tuition_params)

  def list
  end
  
  def create
    if tuition.save
      redirect_to tuition_path(tuition), notice: I18n.t('shared.created', resource: 'Tuition')
    else
      render :new
    end
  end
  
  def update
    if tuition.save
      redirect_to tuition_path(tuition), notice: I18n.t('shared.updated', resource: 'Tuition')
    else
      render :edit
    end
  end
  
  def destroy
    tuition.destroy
    redirect_to tuition_path, notice: I18n.t('shared.deleted', resource: 'Tuition')
  end

  private

  def tuition_params
    params.require(:tuition).permit(:deadline)
  end
  
end