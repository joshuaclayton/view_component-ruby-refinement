# frozen_string_literal: true

module RefineString
  refine String do
    def yell
      upcase
    end
  end
end

class HomeComponent < ViewComponent::Base
  using RefineString

  def initialize(message:)
    @message = message
  end

  def yelled_message
    @message.yell
  end
end
