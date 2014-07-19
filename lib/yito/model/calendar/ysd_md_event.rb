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
        property :description, Text

        belongs_to :calendar, 'Yito::Model::Calendar::Calendar',
                   :child_key => [:calendar_id], :parent_key => [:id]

        belongs_to :event_type, 'Yito::Model::Calendar::EventType',
                   :child_key => [:event_type_id], :parent_key => [:id]

        def save

          check_calendar! if self.calendar
          check_event_type! if self.event_type
          super

        end

        #
        # Exporting to json
        #
        def as_json(options={})
 
          relationships = options[:relationships] || {}
          relationships.store(:event_type, {})
       
          super(options.merge({:relationships => relationships}))
    
        end

        private 
    
        def check_calendar!
          if self.calendar and (not self.calendar.saved?) and loaded_calendar = Calendar.get(self.calendar.id)
            self.calendar = loaded_calendar
          end
        end

        def check_event_type!
          if self.event_type and (not self.event_type.saved?) and loaded_event_type = Calendar.get(self.event_type.id)
            self.event_type = loaded_event_type
          end
        end


      end
    end
  end
end