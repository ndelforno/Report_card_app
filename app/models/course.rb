class Course < ApplicationRecord
  has_many :tests

  def self.import(file)
    CSV.foreach('courses.csv') do |row|
      Course.create(
        name: row[1],
        teacher: row[2],
        course_id: row[0]
      )
    end
  end
end
