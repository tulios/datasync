require 'lib/jtds-1.2.4.jar'   
include Java                   

require 'rubygems'
require 'active_record'
                     
require 'config/environment.rb'
load 'config/boot.rb'
               
module TipoGenerator   
  
  def self.run!(names)                          
    names.split(', ').each do |name|
      generate_tipos(name)
    end
  end
  
  private
  def self.generate_tipos(table_name)
    puts "\n--#{table_name}"
    select = ActiveRecord::Base.connection.select_all("select * from #{table_name}")
    select.each do |result|
      keys = result.keys.collect{|k| k}
      values = keys.collect do |k| 
        if result[k].class == Fixnum or result[k].class == Integer
          result[k]
        else
          "'#{result[k].strip.gsub(/\s+/, '')}'"
        end
      end
      puts "insert into #{table_name} (#{keys.join(', ')}) values (#{values.join(', ')});"
    end
  end
  
end