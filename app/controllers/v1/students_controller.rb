class V1::StudentsController < ApplicationController
    def index
      std1 = Student.new('James')
      std2 = Student.new('Jono')
      std3 = Student.new('John')
      std4 = Student.new('Radu')
      std5 = Student.new('Cole')
      std6 = Student.new('Meltem')

      arr = Array.new
      arr.push(std1)
      arr.push(std2)
      arr.push(std3)
      arr.push(std4)
      arr.push(std5)
      arr.push(std6)
    
      sorted = arr.sort_by { |student| student.name }
      res = Response.new(sorted)
      render json: res, status: :ok
    end
end
