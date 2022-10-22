# typed: strict
# frozen_string_literal: true

module Process
  # Patch the RBI to make the return type of this clearer than "anything",
  # which is what sorbet thinks it is
  class Waiter < Thread
    sig { returns Process::Status }
    def value; end
  end
end
