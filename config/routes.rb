Rails.application.routes.draw do
  get "/:ip/:port" => "rvsh#index", constraints: {
    ip: /[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}/,
    port: /[[:digit:]]{2,4}/
  }
  # root "rvsh#index"
end
