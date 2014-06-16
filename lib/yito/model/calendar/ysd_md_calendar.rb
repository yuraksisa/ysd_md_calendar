require 'data_mapper' unless defined?DataMapper::Resource
module Yito
  module Model
    module Calendar
      class Calendar
         include DataMapper::Resource
         
         storage_names[:default] = 'cal_calendar'

         property :id, Serial
         property :name, String, :length => 80

         has n, :calendar_events, 'Yito::Model::Calendar::Event', :constraint => :destroy 

      end
    end
  end
end