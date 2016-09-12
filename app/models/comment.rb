class Comment < ApplicationRecord
  # Rails does this automatically!
  belongs_to :article
end
