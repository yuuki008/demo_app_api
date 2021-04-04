require "net/http"

module URL
  extend ActiveSupport::Concern

  def exist?(url)
    begin
      url = skip_url?(url) ? URI.parse(url) : URI.parse(url + '/')
      req = Net::HTTP.new(url.host, url.port)
      req.use_ssl = true if url.scheme == 'https'
      req.request_head(url.path).code == '200'
    rescue => e
      puts e
      false
    end
  end

  private

    def skip_url?(url)
      url.end_with?('/') || url.end_with?('.html') || url.end_with?('.php') || url.end_with?('.aspx')
    end
end
