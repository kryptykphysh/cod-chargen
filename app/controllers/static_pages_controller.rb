# frozen_string_literal: true

# StaticPages is just a placeholder to test VueJS
class StaticPagesController < ApplicationController
  def home
    @current_time = Time.now
  end
end
