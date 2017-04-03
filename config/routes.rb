Rails.application.routes.draw do
  root 'students#index'
  devise_for :users
  resources :students do
    get :subjects
  end
  resources :teachers do
    get :subjects
  end
  resources :visitors
  get 'reports/subjects', as: :report_subjects
  #get 'teachers/subjects', as: :teacher_subjects
end
