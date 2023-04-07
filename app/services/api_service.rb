class ApiService
  def self.call(url)
    conn = make_conn
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.make_conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.headers['X-Api-Key'] = ENV['fdc_key']
    end
  end
end