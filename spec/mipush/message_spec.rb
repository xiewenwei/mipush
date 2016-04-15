require 'spec_helper'

describe 'Message' do

  context 'Android Message' do

    it 'should have params pass_through and others' do


      message = Mipush::AndroidMessage.new(pass_through: 11)

      params = message.to_params

      puts params

      expect(params).to include('pass_through')

      expect(params).to include('extra.notify_effect')

    end

    it 'should have encode title' do

      title = 'May the force be with you'

      message = Mipush::AndroidMessage.new(title: title)

      expect(message.to_params).to include(CGI.escape title)

    end

  end


end