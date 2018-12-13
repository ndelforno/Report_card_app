class Test < ApplicationRecord

  def self.import(file)
    CSV.foreach('tests.csv') do |row|
      Test.create(
        test_id: row[0],
        course_id: row[1],
        weight: row[2]
      )
    end 
  end
end
