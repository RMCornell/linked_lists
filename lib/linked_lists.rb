require 'pry'

class LinkedList
	attr_reader :head, :count

	def initialize
		@head = nil
		@count = 0
	end

	def add_node(data)
		if head.nil?
			@head = Node.new(data)
			@count += 1
		else
			current = @head
			while !current.link.nil? do
				current = current.link
			end
			current.link = Node.new(data)
			@count += 1
		end
	end



end




class Node
	attr_accessor :data, :link

	def initialize(data, link = nil)
		@data      = data
		@link = link
	end
end


# list = LinkedList.new
# node_one = Node.new("Dream")
# node_two = Node.new("Despair")
# node_three = Node.new("Destiny")
# list.add_node(node_one)
# list.add_node(node_two)
# list.add_node(node_three)
# binding.pry
