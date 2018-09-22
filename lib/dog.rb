class Dog

  attr_accessor :id, :name, :breed

  def initialize(id: nil, name:, breed:)
    id = @id
    name = @name
    breed = @breed
  end
end

class Dog_Table
  def create_table
    DB[:conn].execute("DROP TABLE IF EXISTS dogs")
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS dogs (
        id INTEGER PRIMARY KEY,
        name TEXT,
        breed TEXT
        )
    SQL
  end
end
