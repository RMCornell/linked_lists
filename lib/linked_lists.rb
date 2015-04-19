class LinkedList
	attr_reader :head_node

	def initialize
		@head_node = nil
	end

	def add_node(data)
		if head_node == nil
			@head_node = Node.new(data)
		end
	end

end

class Node
	attr_reader :data, :link

	def initialize(data, link = nil)
		@data = data
		@link = link
	end
end

