Rails.application.routes.draw do
  localized do
    resources :articles, only: [:index]
    mount Blorgh::Engine => "/blorgh"
  end
end
