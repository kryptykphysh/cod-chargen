# frozen_string_literal: true

# ApplicationRecord is the top level class for all other ActiveRecord models
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
