class Student < ApplicationRecord
  has_many :marks

  def self.import(file)
      CSV.foreach(file.path) do |row|
        Student.create(
          name: row[1],
          student_id: row[0]
        )
      end
  end

end
