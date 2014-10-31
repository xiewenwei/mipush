module Mipush
  class IosMessage < Message
    attr_accessor :extra_sound_url, :badge

    def initialize(options={})
      @description = options[:description]
      @time_to_live = options[:time_to_live]
      @time_to_send = options[:time_to_send]
      @extra_sound_url = options[:extra_sound_url]
      @badge = options[:badge]
    end

  end
end

# todo Feature
# iOS 的功能还在开发

# description    (string) 通知栏展示的通知的描述。
# ime_to_live    (string) 可选项。如果用户离线，设置消息在服务器保存的时间，单位：ms。
#                         服务器默认最长保留两周。
# ime_to_send    (string) 可选项。定时发送消息。用自1970年1月1日以来00:00:00.0 UTC时间表
#                          示（以毫秒为单位的时间）。
# xtra.sound_url (string) 可选项，自定义消息铃声。当值为空时为无声，default为系统默认声音。
# xtra.badge     (string) 可选项。通知角标。
