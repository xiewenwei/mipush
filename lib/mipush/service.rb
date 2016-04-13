module Mipush
  module Service

    # 向 reg_id 发送消息
    def self.send_regid(regid, message)
      regid = URI.encode regid.to_s

      send_message(SEND_ENDPOINT_REGID, message, {registration_id: regid})
    end

    # 向 alias 发送通知
    def self.send_alias(aliass, message )

    end


    # 向标签发送通知
    def self.send_topic(topic, message)

    end

    #
    # @note 发送推送
    #
    # @param [String] endpoint 地址
    # @param [Mipush::Message] message 推送的消息体
    # @param [Hash] params 额外参数
    #
    def self.send_message(endpoint, message, params = {})
      url = "#{endpoint}?#{message.to_params}"
      url = "#{url}&#{params.to_param}" if params
      RestClient.post url, '', { authorization: "key=#{message.secret_key}" }
    end


  end
end
