class Transaction < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :pokemon

  OPERATIONS = {
    buy: {
        action: 'BUY'
    },
    sell: {
        action: 'SELL'
    }
  }.freeze
end
