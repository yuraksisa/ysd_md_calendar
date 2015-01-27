require 'data_mapper' unless defined?DataMapper::Resource
module Yito
  module Model
  	module Calendar
  	  #
  	  # It represents an event type
  	  #	
  	  class EventType
        include DataMapper::Resource
      
        storage_names[:default] = 'cal_event_type'

        property :id, Serial
        property :name, String, :length => 80
        property :description, String, :length => 80      

      end
    end
  end
end