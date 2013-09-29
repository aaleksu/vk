require "vk/version"
require 'net/http'
require 'uri'

module Vk
  @@group_id = nil
  mattr_accessor :group_id

  def self.setup
    yield self
  end

  def self.do_request(method, query_params)
    vk_query = { 'uid' => @@group_id }
    query_params.each do |key, value|
      query_params[key] = vk_query[value] if vk_query.has_key?(value)
    end
    query_params.merge!(vk_query)
    vk_url = "https://api.vk.com/method/#{method}?#{query_params.to_query}"
    uri = URI(vk_url)
    response = {}
    Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      request = Net::HTTP::Get.new uri.request_uri
      response = http.request request
      response = JSON.parse(response.body)['response'] unless response.body.empty?
    end
    response
  end
end
