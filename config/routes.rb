Rails.application.routes.draw do



  devise_for :enployees,skip: [:passwords],controllers: {
    registrations: "enployee/registrations",
    sessions: 'enployee/sessions'
  }
  
    devise_for :admin,skip: [:registrations, :passwords] , controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    resources :overtimes, onry: [:index]
  end
  namespace :admin do
    resources :stamps
    get 'stamps/fix/finish' => 'stamps#finish'
  end
  namespace :admin do
    resources :enployees, onry: [:index, :show]
  end
  namespace :admin do
    get 'homes/top'
    get 'homes/revise'
  end




  scope module: :enployee do
    resources :enployees, onry: [:show, :edit]
  end
  scope module: :enployee do
    resources :overtimes, onry: [:new, :create, :index]
  end
  scope module: :enployee do
    resources :stamps, onry: [ :edit, :create, :update]
    root to: 'stamps#new'
  end
  scope module: :enployee do
    get 'homes/about'
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
