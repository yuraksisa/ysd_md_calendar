require 'data_mapper' unless defined?DataMapper::Resource
module Yito
  module Model
  	module Calendar
  	  #
  	  # It represents an event that can be applied to a calendar
  	  #
  	  class EventTypeCalendar
        include DataMapper::Resource

        storage_names[:default] = 'cal_event_type_calendar'

        belongs_to :calendar, 'Calendar', key: true
        belongs_to :event_type, 'EventType', key: true
        
  	  end
  	end
  end
end