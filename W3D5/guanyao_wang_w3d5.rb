  class Stack
    def initialize
      # create ivar to store stack here!
      @store = []
    end

    def push(el)
      # adds an element to the stack
      store << el
    end

    def pop
      # removes one element from the stack
      store.pop
    end

    def size
      store.length
    end

    def empty?
      store.empty?
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      store.last
    end

    def inspect
      "#<Stack:#{self.object_id}>"
    end

    private
    attr_reader :store
  end

  class Queue
    def initialize
      @inner_array = []
    end

    def enqueue(el)
      inner_array << el
    end

    def dequeue
      inner_array.shift
    end

    def show
      inner_array.dup
    end

    def empty?
      inner_array.empty?
    end

    private
    attr_reader :inner_array
  end

  class Map

    def initialize
        @out_array = []
        @key = Set.new
    end

    def set(key, value)
        @key << key
        @key.each do |k|
            if k == key && out_array.length < @key.length
                out_array << [k, value]
            end
        end
    end

    def get(key)
        out_array.each do |sub_arr|
            if sub_arr.first == key
                return sub_arr.last
            end
        end
    end

    def delete(key)
        @key.delete(key)
        out_array.each do |sub_arr|
            if sub_arr.first == key
                out_array.delete(sub_arr)
            end
        end
    end

    def show
        out_array.dup
    end

    private
    attr_reader :out_array

  end