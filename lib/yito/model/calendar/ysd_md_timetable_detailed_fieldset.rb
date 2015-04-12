module Yito
  module Model
    module Calendar
      module TimetableDetailedFieldset

        def self.included(model)

          model.property :timetable_sunday_from, String, :length => 5
          model.property :timetable_sunday_to, String, :length => 5
          model.property :timetable_monday_from, String, :length => 5
          model.property :timetable_monday_to, String, :length => 5
          model.property :timetable_tuesday_from, String, :length => 5
          model.property :timetable_tuesday_to, String, :length => 5
          model.property :timetable_wednesday_from, String, :length => 5
          model.property :timetable_wednesday_to, String, :length => 5
          model.property :timetable_thursday_from, String, :length => 5
          model.property :timetable_thursday_to, String, :length => 5
          model.property :timetable_friday_from, String, :length => 5
          model.property :timetable_friday_to, String, :length => 5
          model.property :timetable_saturday_from, String, :length => 5
          model.property :timetable_saturday_to, String, :length => 5

        end

      end
    end
  end
end