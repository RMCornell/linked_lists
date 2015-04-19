class LinkedList
	attr_reader :head

	def initialize
		@head = nil
	end

	def empty?
		@head.nil?
	end

	def add_node(data)
		if head.nil?
			@head = Node.new(data)
		elsif
			head.link = Node.new(data)
		else
			head.link.nil?
			head.link = Node.new(data)
		end
	end
end

class Node
	attr_reader :data
	attr_accessor	:link

	def initialize(data)
		@data = data
		@link = nil
	end
end