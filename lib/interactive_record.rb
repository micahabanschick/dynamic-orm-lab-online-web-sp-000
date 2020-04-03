require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'pry'

class InteractiveRecord
  
  def self.table_name
    self.to_s.downcase.pluralize 
  end
  
  def self.column_names
    # binding.pry
    sql = "PRAGMA table_info(#{table_name})"
    DB[:conn].execute(sql).map{|col| col["name"]}
  end
  
  def initialize(columns={})
    columns.each{|col, value| self.send("#{col}=", value)}
  end
  
  def table_name_for_insert
  end 
  
  def col_names_for_insert
  end 
  
  def values_for_insert
  end 
  
  def save
  end 
  
  def self.find_by_name
  end 
  
  def self.find_by 
  end 
  
end