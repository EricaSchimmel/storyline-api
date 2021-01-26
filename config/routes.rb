Rails.application.routes.draw do
  scope '/api/v:api_version' do
    devise_for :users
  end
end
