class SayMyName < ServiceIt::Base
  def perform
    @name
  end
end
