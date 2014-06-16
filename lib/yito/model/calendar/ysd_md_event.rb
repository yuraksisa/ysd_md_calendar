require 'data_mapper' unless defined?DataMapper::Resource
module Yito
  module Model
    module Calendar
      #
      # It represents a event in the calendar
      #	
      class Event
        include DataMapper::Resource
        
        storage_names[:default] = 'cal_event'

        property :id, Serial
        property :from, DateTime
        property :to, DateTime

        belongs_to :calendar, 'Yito::Model::Calendar::Calendar',
                   :child_key => [:calendar_id], :parent_key => [:id]

        belongs_to :event_type, 'Yito::Model::Calendar::EventType',
                   :child_key => [:event_type_id], :parent_key => [:id]

      end
    end
  end
end