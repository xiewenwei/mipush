module Mipush
  class AndroidMessage < Message

    # 设置通知类型
    # 1 使用默认提示音提示
    # 2 使用默认震动提示
    # 4 使用默认led灯光提示
    NOTIFY_TYPE_DEFAULT_ALL     = -1
    NOTIFY_TYPE_DEFAULT_SOUND   = 1
    NOTIFY_TYPE_DEFAULT_VIBRATE = 2
    NOTIFY_TYPE_DEFAULT_LIGHTS  = 4

    # 0 通知栏消息
    # 1 透传消息
    NTF_CENTER_NTF   = 0
    PASS_THROUGH_NTF = 1

    attr_accessor :payload, :pass_through, :notify_type, :restricted_package_name,
      :notify_id, :enable_flow_controll

    # 有些参数还没加上
    def initialize(options={})
      @title        = options[:title]
      @description  = options[:description]
      @payload      = options[:payload]
      @pass_through = options[:pass_through] || NTF_CENTER_NTF
      @notify_type  = options[:notify_type] || NOTIFY_TYPE_DEFAULT_ALL
      @restricted_package_name = options[:restricted_package_name]
      @secret_key = options[:secret_key]
    end

    # 重构这一端烂代码
    def to_params
      string = ""
      string += "title=#{URI.encode @title.to_s}&" unless @title.nil?
      string += "description=#{URI.encode @description.to_s}&" unless @description.nil?
      string += "payload=#{URI.encode @payload.to_s}&" unless @payload.nil?
      string += "pass_through=#{URI.encode @pass_through.to_s}&" unless @pass_through.nil?
      string += "notify_type=#{URI.encode @notify_type.to_s}&" unless @notify_type.nil?
      string += "restricted_package_name=#{URI.encode @restricted_package_name.to_s}" unless @restricted_package_name.nil?

      string
    end
  end
end
