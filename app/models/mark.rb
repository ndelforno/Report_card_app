class Mark < ApplicationRecord

  def self.import(file)
    CSV.foreach(file.path) do |row|
      Mark.create(
        test_id: row[0],
        student_id: row[1],
        mark: row[2]
      )
    end
  end

end
