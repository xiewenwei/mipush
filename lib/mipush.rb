require "uri"
require "rest_client"
require "mipush/version"
require "mipush/message"
require "mipush/ios_message"
require "mipush/android_message"
require "mipush/service"

module Mipush
  SEND_ENDPOINT_REGID = "https://api.xmpush.xiaomi.com/v2/message/regid"
end
