# app/controllers/react_controller.rb
class ReactController < ApplicationController
  def app
    # Render a view containing the React application's root component
    render 'react/app'
  end
end
