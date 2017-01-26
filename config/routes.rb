BlueberryRedirector::Engine.routes.draw do
  resources :redirector_rules, except: :show
  resources :redirector_rules_imports, only: %i(new create)
  root to: 'redirector_rules#index'
end
