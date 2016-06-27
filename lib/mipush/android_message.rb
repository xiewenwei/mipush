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
      :notify_id, :enable_flow_controll, :extra

    # 有些参数还没加上
    def initialize(options={})
      @title        = options[:title]
      @description  = options[:description]
      @payload      = options[:payload]
      @pass_through = options[:pass_through] || NTF_CENTER_NTF
      @notify_type  = options[:notify_type] || NOTIFY_TYPE_DEFAULT_SOUND
      @restricted_package_name = options[:restricted_package_name]
      @secret_key = options[:secret_key]
      @extra = options[:extra] || {}
    end

    # 已重构
    def to_params
      self.instance_variables.each_with_object({}) do |variable, params|
        value = self.instance_variable_get(variable)
        unless value.nil?
          params[variable.to_s.delete('@')] = value
        end
      end.merge('extra.notify_effect' => 1).merge(self.extra).to_param
    end
  end
end
