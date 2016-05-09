# Mipush

小米推送 SDK 的 Ruby 版本。

## Installation

Add this line to your application's Gemfile:

    gem 'mipush'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mipush

## Usage

* title: App 的名字，比如 「薄荷」

* description: 消息正文，比如「你今天燃烧了100卡路里」

* payload: 消息正文，比如「你今天燃烧了100卡路里」

* pass_through: 是否为透传消息，默认为1（否）

* notify_type: 提醒方式，默认为声音

* restricted_package_name: 在小米开发者中注册App 的包名，比如 com.boohee.one

* secret_key: 你在小米注册的 App 的 secret key

```
# 范例
android_message = Mipush::AndroidMessage.new(
  title: "薄荷",
  description: "I love U",
  payload: "I love U",
  pass_through: 0,
  notify_type: 1,
  restricted_package_name: "com.boohee.one",
  secret_key: "your_xiaomi_secret"
)

# reg_id 为小米每台设备的唯一 id
Mipush::Service.send_regid(reg_id, message)
```

![preview](http://up.boohee.cn/house/u/201501/notification.jpg)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mipush/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
all right reserved
