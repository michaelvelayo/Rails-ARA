class Anime
	attr_accessor :title
	attr_reader :id

	@@animes = []

	def initialize(props = {})
		@title = props['title']
		@id = props['id']
		if !in_db?
			save
			set_instance_id
		end
		@@animes << self
	end

	def save
		sql = <<-SQL
		  INSERT INTO animes (title)
		  VALUES (?)
		SQL
		statement = DB[:conn].prepare(sql)
		statement.execute(@title)
	end

	def in_db?
		sql = <<-SQL
		  SELECT * FROM animes
		  WHERE title = ?;
		SQL

		statement = DB[:conn].prepare(sql)
		results = statement.execute(@title)
		results.count == 0 ? false : true
	end

	def set_instance_id
		sql = <<-SQL
		  SELECT id FROM animes
		  ORDER BY id DESC
		  LIMIT 1
		SQL

		results = DB[:conn].query(sql)

		@id = results.first['id']
	end

	def self.all
		sql = <<-SQL
		  SELECT * FROM animes;
		SQL
		results = DB[:conn].query(sql)

		@@animes = results.map do |result|
			Anime.new(result)
		end
	end

	def self.find_by(param)
		sql = <<-SQL
		  SELECT * FROM animes WHERE ?
		SQL
		statement = DB[:conn].prepare(sql)
				binding.pry
		results = statement.execute(sql)
		results.first
	end

	def self.update()
		sql = <<-SQL
		  UPDATE animes SET title = ? WHERE id = ?
		SQL
		statement = DB[:conn].prepare(sql)
		statement.execute(title, id)
	end

	def self.delete(id)
		sql = <<-SQL
		  DELETE FROM animes WHERE id = ?
		SQL
		statement = DB[:conn].prepare(sql)
		statement.execute(id)
	end

end
