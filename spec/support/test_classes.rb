class SayMyName < ServiceIt::Base
  def perform
    @name
  end
end

class MissedCallService < ServiceIt::Base
end
