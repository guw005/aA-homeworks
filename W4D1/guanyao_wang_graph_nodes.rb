require 'set'

class GraphNode
      attr_accessor :val, :neighbors

  def initialize(val)
    self.val = val
    self.neighbors = []
  end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new()

    until queue.empty?
        el = queue.shift
        unless visited.include?(el)
            return el.val if el.val == target_value
            visited.add(el)
            el.neighbors.each {|neighbor| queue << neighbor}
        end
    end
end

 p bfs(a, "b")
 p bfs(a, "f")