require 'sqlite3'

# Open a database connection
def setup_database
  SQLite3::Database.new 'core_data.db'
end

# Create a table
def create_table(db)
  db.execute <<-SQL
    CREATE TABLE IF NOT EXISTS core_data (
      id INTEGER PRIMARY KEY,
      data TEXT,
      timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
    );
  SQL
end

# Insert data into the table
def insert_data(db, data)
  db.execute "INSERT INTO core_data (data) VALUES (?)", data
end

# Retrieve all data from the table
def get_all_data(db)
  db.execute "SELECT * FROM core_data"
end

# Update data in the table
def update_data(db, id, new_data)
  db.execute "UPDATE core_data SET data = ? WHERE id = ?", [new_data, id]
end

# Delete data from the table
def delete_data(db, id)
  db.execute "DELETE FROM core_data WHERE id = ?", id
end

# Data Aggregation
def aggregate_data(db)
  result = db.execute("SELECT COUNT(*), AVG(data), SUM(data) FROM core_data")
  puts result
end

# Filtering Data
def filter_data(db, condition)
  db.execute("SELECT * FROM core_data WHERE data LIKE ?", ["%#{condition}%"])
end

# Ordering Data
def order_data(db, column, order = 'ASC')
  db.execute("SELECT * FROM core_data ORDER BY #{column} #{order}")
end

# Limiting Data
def limit_data(db, limit)
  db.execute("SELECT * FROM core_data LIMIT ?", [limit])
end

# Grouping Data
def group_data(db, group_by_column)
  db.execute("SELECT #{group_by_column}, COUNT(*) FROM core_data GROUP BY #{group_by_column}")
end

# Joining Tables (example with placeholder table)
def join_tables(db)
  db.execute("SELECT * FROM core_data JOIN another_table ON core_data.id = another_table.id")
end

# Main functionality
if __FILE__ == $0
  db = setup_database
  create_table(db)

  # Insert sample data
  insert_data(db, 'Sample core data 1')
  insert_data(db, 'Sample core data 2')

  # Retrieve and print all data
  puts "Initial data:"
  data = get_all_data(db)
  data.each { |row| puts row.join(", ") }

  # Perform additional data operations
  puts "\nAggregated data:"
  aggregate_data(db)

  puts "\nFiltered data (containing 'core'):"
  filtered_data = filter_data(db, 'core')
  filtered_data.each { |row| puts row.join(", ") }

  puts "\nOrdered data by 'data':"
  ordered_data = order_data(db, 'data')
  ordered_data.each { |row| puts row.join(", ") }

  puts "\nLimited data (2 records):"
  limited_data = limit_data(db, 2)
  limited_data.each { |row| puts row.join(", ") }

  puts "\nGrouped data by 'data':"
  grouped_data = group_data(db, 'data')
  grouped_data.each { |row| puts row.join(", ") }

  # Update a data entry
  update_data(db, 1, 'Updated core data 1')

  # Retrieve and print all data after update
  puts "\nData after update:"
  data = get_all_data(db)
  data.each { |row| puts row.join(", ") }

  # Delete a data entry
  delete_data(db, 2)

  # Retrieve and print all data after deletion
  puts "\nData after deletion:"
  data = get_all_data(db)
  data.each { |row| puts row.join(", ") }

  # Close the database connection
  db.close
