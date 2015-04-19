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

end


