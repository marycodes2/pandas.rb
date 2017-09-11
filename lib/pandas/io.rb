require 'pandas'

module Pandas
  module IO
    def self.is_activerecord_datasource?(obj)
      return false unless defined?(::ActiveRecord)
      return true if obj.is_a?(::ActiveRecord::ConnectionAdapters::AbstractAdapter)
      false
    end
  end
end
