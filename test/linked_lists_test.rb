require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_lists'

class LinkedListTest < MiniTest::Test
	def test_it_exists
		assert LinkedList.new
	end

	def test_it_starts_empty
		list = LinkedList.new
		assert list.head.nil?
	end

	def test_first_node_becomes_head_node
		list = LinkedList.new
		node = Node.new("One")
		list.add_node(node)
		assert_equal "One", list.head.data.data
	end

	def test_second_node_attaches_to_head_node
		list = LinkedList.new
		node_one = Node.new("One")
		node_two = Node.new("Two")
		list.add_node(node_one)
		list.add_node(node_two)
		assert_equal "Two", list.head.link.data.data
	end

	def test_third_node_data_accessible_through_head
		list = LinkedList.new
		node_one = Node.new("One")
		node_two = Node.new("Two")
		node_three = Node.new("Three")
		list.add_node(node_one)
		list.add_node(node_two)
		list.add_node(node_three)
		assert_equal "Three", list.head.link.link.data.data
	end

	def test_it_counts_number_of_nodes
		list = LinkedList.new
		node_one = Node.new("Dream")
		node_two = Node.new("Destiny")
		node_three = Node.new("Despair")
		list.add_node(node_one)
		list.add_node(node_two)
		list.add_node(node_three)
		assert_equal 3, list.count
	end



end