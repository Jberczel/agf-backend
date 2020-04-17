class Guitar < ApplicationRecord
  extend PostUtils
  default_scope { order(:id) }
end
