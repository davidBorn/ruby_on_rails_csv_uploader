require 'csv'
require 'activerecord-import/base'

class Menu < ApplicationRecord
    def self.my_import(file)
        menus = []
        CSV.foreach(file.path, headers:true) do |row|
            menus << Menu.new(row.to_h)
        end
        Menu.import menus, recursive: true      
    end

    def self.categories
        distinct.pluck(:catagory)
    end

    def items
        self.where(catagory: catagory)
    end
end
