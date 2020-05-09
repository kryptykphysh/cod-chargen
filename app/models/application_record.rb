# frozen_string_literal: true

# Parent for any active record model helpers
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
