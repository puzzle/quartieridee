Rails.application.routes.draw do
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  mount Decidim::Core::Engine => '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'status/health', to: 'status#health'
  get 'status/readiness', to: 'status#readiness'
end

