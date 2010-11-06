require 'active_record'

module Haphazard
  module ClassMethods
    def random
      amount = rand(count)
      limit(1).offset(amount).first
    end
  end
end

ActiveRecord::Base.send(:extend, Haphazard::ClassMethods)