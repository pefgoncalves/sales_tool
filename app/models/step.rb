class Step < ActiveRecord::Base
  belongs_to :flow
  belongs_to :message
end
