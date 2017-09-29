Blorgh::Engine.routes.draw do
  resources :magazines, only: [:index]
end
