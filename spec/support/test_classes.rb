# frozen_string_literal: true

class SayMyName < ServiceIt::Base
  def perform
    name
  end
end

class MissedPerformService < ServiceIt::Base; end
