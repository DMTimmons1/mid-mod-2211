class TotalHits
  attr_reader :total
  
  def initialize(data)
    @total = data[:totalHits]
  end
end