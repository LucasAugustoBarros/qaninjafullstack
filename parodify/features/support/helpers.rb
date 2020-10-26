require "httparty"

module Helpers
  def removeUser(email)
    HTTParty.get("http://parodify.qaninja.com.br/helpers?email=#{email}")
  end
end
