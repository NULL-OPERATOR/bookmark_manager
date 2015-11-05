class Bookmark
	include DataMapper::Resource
	has n, :tags, through: Resource

	property :url,        String
	property :id,         Serial
  property :name,       String
end
