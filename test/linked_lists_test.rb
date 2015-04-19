require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_lists'

class LinkedListTest < MiniTest::Test
	def test_it_exists
		assert LinkedList.new
	end

	def test_it_starts_nil
		linked_list = LinkedList.new
		assert_equal nil, linked_list.head_node
	end

	def test_makes_first_added_node_head_node_when_list_empty
		linked_list = LinkedList.new
		node_one = linked_list.add_node(Node.new("Robert"))
		assert_equal "Robert", node_one.data.data
	end

	def test_head_node_is_no_longer_nil_when_node_added
		linked_list = LinkedList.new
		node_one = linked_list.add_node(Node.new("Franklin"))
		refute nil?, linked_list.head_node
	end
end


