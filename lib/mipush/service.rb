module Mipush
  module Service

    # 向 reg_id 发送消息
    def self.send_regid(regid, message)
      regid = URI.encode regid.to_s
      url = SEND_ENDPOINT_REGID + "?" + "registration_id=" + regid + "&" + message.to_params

      RestClient.post url, "", { authorization: "key=#{message.secret_key}" }
    end

    # 向 alias 发送通知
    def self.send_alias(aliass, message )

    end


    # 向标签发送通知
    def self.send_topic(topic, message)

    end
  end
end
