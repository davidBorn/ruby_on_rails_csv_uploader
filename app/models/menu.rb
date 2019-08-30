class Menu < ApplicationRecord
    require 'csv'
    require 'activerecord-import/base'


    def self.my_import(file)
        menus = []
        CSV.foreach(file.path, headers:true) do |row|
            menus << Menu.new(row.to_h)
        end
        Menu.import menus, recursive: true
    end
end
