  class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack << el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack.first
    end
  end

  class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end
  end

  class Map

    def initialize
        @map = []
        @key = Set.new
    end

    def set(key, value)
        @key << key
        @key.each do |k|
            if k == key && @map.length < @key.length
                @map << [k, value]
            end
        end
    end

    def get(key)
        @map.each do |sub_arr|
            if sub_arr.first == key
                return sub_arr.last
            end
        end
    end

    def delete(key)
        @key.delete(key)
        @map.each do |sub_arr|
            if sub_arr.first == key
                @map.delete(sub_arr)
            end
        end
        @map
    end

    def show
        @map
    end

  end