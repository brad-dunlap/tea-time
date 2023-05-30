class TeasSerializer
	include JSONAPI::Serializer
	set_type :teas
	
	attributes :name, :description, :temperature, :brew_time

	exclude :created_at, :updated_at
	end