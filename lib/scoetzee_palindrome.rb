require "scoetzee_palindrome/version"

module ScoetzeePalindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.split(/\W/).join.downcase
    end
end

class String
  include ScoetzeePalindrome
end 

class Integer
  include ScoetzeePalindrome
end