require "proc_chain/version"

module ProcChain
  class Builder
    attr_reader :data
    def initialize(data = nil)
      @data = data
    end

    def next
      @data = yield @data
      self
    end
  end
end
