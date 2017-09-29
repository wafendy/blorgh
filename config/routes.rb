Blorgh::Engine.routes.draw do
  localized do
    resources :magazines, only: [:index]
  end
end
