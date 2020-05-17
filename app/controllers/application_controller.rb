# frozen_string_literal: true

# ApplicationController is inherited by all other controllers
class ApplicationController < ActionController::Base
  def new_session_path(_scope)
    new_user_session_path
  end
end
