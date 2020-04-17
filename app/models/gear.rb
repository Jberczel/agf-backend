class Gear < ApplicationRecord
  extend PostUtils
  default_scope { order(:id) }
end
