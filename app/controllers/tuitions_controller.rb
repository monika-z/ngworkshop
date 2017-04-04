class TuitionsController < ApplicationController
  expose(:tuitions) { Tuition.all }
  expose(:students) { Student.all }
    def list
    end
end
