Rails.application.routes.draw do
  root 'rsvps#savethedate'
  resources :rsvps, only: [:index, :new, :create, :destroy] do
    collection do
      get 'thankyou'
      get 'search'
      get 'savethedate'
      get 'photo'
      get 'faq'
    end
  end
  devise_for :users,
             :path => '',
             :path_names => { :sign_in => 'login', :sign_up => 'signup', :sign_out => 'logout' }

end
