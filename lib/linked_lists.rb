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
			@head.id += count
		else
			current = @head
			while !current.link.nil? do
				current = current.link
			end
			current.link = Node.new(data)
			@count += 1
			current.link.id = @count
		end
	end

	def last
		if head.nil?
			@head  = Node.new(data)
			@count += 1
		else
			current = @head
			while !current.link.nil? do
				current = current.link
			end
			return current.data.data
		end
	end

	def pop
	#todo write pop method
		#find last item in list using count
		#set link of second to last item to nil (Last item is thrown in garbage)

	end

	def node_id(id)
		if head.nil?
			@head  = Node.new(data)
		else
			current = @head
			until current.link.id == id do
				current = current.link.id
			end
			return current.link.data.data
		end
	end
end




class Node
	attr_accessor :data, :link, :id

	def initialize(data, link = nil, id = 0)
		@data      = data
		@link = link
		@id = id
	end
end

#
# list = LinkedList.new
# node_one = Node.new("Dream")
# node_two = Node.new("Despair")
# node_three = Node.new("Destiny")
# list.add_node(node_one)
# list.add_node(node_two)
# list.add_node(node_three)
# binding.pry
