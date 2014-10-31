module Mipush
  class Message
    attr_accessor :title, :description, :time_to_live, :time_to_send,
      :secret_key, :extra
  end
end
