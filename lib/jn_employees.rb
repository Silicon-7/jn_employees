require "jn_employees/version"
require 'unirest'

module JnEmployees
  class Employee
    attr_reader :job_title, :department, :name, :salary

    def initialize(hash)
      @job_title = hash["job_titles"]
      @department = hash["department"]
      @name = hash["name"]
      @salary = hash["employee_annual_salary"]
    end

    def self.all
      employees_array = Unirest.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json").body      
      convert_hashes_to_objects(employees_array)
    end

    def self.search(search_term)
      employees_array = Unirest.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json?$q=#{search_term}").body
      convert_hashes_to_objects(employees_array)
    end

    private

    def self.convert_hashes_to_objects(array_of_hashes)
      employees = []
      array_of_hashes.each do |employee_hash|
        employees << Employee.new(employee_hash)
      end
      employees
    end
  end
end
