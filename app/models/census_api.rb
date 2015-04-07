class CensusAPI

  def initialize
    @conn = Faraday.new(:url => 'http://api.usatoday.com')
  end

  def location
    response = @conn.get do |req|
      req.url "/open/census/loc?api_key=#{user_api}"
      req.headers['Content-Type'] = 'application/json'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def user_api
    "7gn2rb5w5j67tk2khudkyufw"
  end

end
