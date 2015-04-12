require 'data_mapper' unless defined?DataMapper
module Yito
  module Model
    module Calendar
      class Timetable
      	include DataMapper::Resource
      	include TimetableFieldset
      	include TimetableDetailedFieldset

        storage_names[:default] = 'cal_timetables'

      	property :id, Serial
      	property :name, String, :length => 80
      	property :description, Text
      	
      end
    end
  end
end