module JobInterview
  module Knapsack

    # Given a set of items, each with a weight and a value, determines
    # the maximum profit you can have while keeping the overall weight
    # smaller than the capacity of the knapsack.
    #
    # @param items [Array<Array>] An array of pairs (weight, profit) representing the items
    # @param capacity [Integer] The capacity of the knapsack
    # @param algorithm [:memoize, :dynamic] The algorithm used to solve this, defaults to :dynamic
    #
    def knapsack(items, capacity, algorithm = :dynamic)
      if algorithm == :memoize
        knapsack_memoize(items, capacity)
      elsif algorithm == :dynamic
        knapsack_dynamic_programming(items, capacity)
      end
    end

    private

    def knapsack_memoize(items, capacity)
      cache = Array.new(items.length + 1) { [0] }
      cache[0] = Array.new(capacity + 1, 0)
      knapsack_memoize_recursive(items, capacity, items.length, cache)
    end

    def knapsack_dynamic_programming(items, capacity)
      cache = Array.new(items.length + 1) { [0] }
      cache[0] = Array.new(capacity + 1, 0)

      (0..capacity).each do |remaining_weight|
        items.each_with_index do |item, index|
          weight, profit = item
          cache[index + 1][remaining_weight] = if weight <= remaining_weight then
            [
              profit + cache[index][remaining_weight - weight], # Take item
              cache[index][remaining_weight] # Don't take item
            ].max
          else
            cache[index][remaining_weight] # Don't take item
          end
        end
      end

      cache[items.length][capacity]
    end

    def knapsack_memoize_recursive(items, capacity, position, cache)
      return cache[position][capacity] if cache[position][capacity]

      weight, profit = items[position - 1]

      cache[position][capacity] = if weight <= capacity then
        [
          profit + kmr(items, capacity - weight, position - 1, cache), # Take item
          kmr(items, capacity, position - 1, cache) # Don't take item
        ].max
      else
        kmr(items, capacity, position - 1, cache) # Don't take item
      end

      cache[position][capacity]
    end
    alias_method :kmr, :knapsack_memoize_recursive
  end
end
