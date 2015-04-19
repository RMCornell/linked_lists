require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_lists'

class NodeTest < MiniTest::Test
	def test_it_exists
		assert Node.new("Robert")
	end
end