module Yito
  module Model
    module Calendar
      module TimetableFieldset

        def self.included(model)

          model.property :timetable_sunday, DataMapper::Property::Boolean
          model.property :timetable_monday, DataMapper::Property::Boolean
          model.property :timetable_tuesday, DataMapper::Property::Boolean
          model.property :timetable_wednesday, DataMapper::Property::Boolean
          model.property :timetable_thursday, DataMapper::Property::Boolean
          model.property :timetable_friday, DataMapper::Property::Boolean
          model.property :timetable_saturday, DataMapper::Property::Boolean

        end

      end
    end
  end
end