# frozen_string_literal: true

require 'net/http'

module Quartieridee
  module Verifications
    module Sms
      class AspsmsGateway
        attr_reader :mobile_phone_number, :code

        def initialize(mobile_phone_number, code)
          @mobile_phone_number = format_mobile_number(mobile_phone_number)
          @code = code
        end

        def deliver_code
          return false unless @mobile_phone_number.present?
          response = Net::HTTP.post(uri, payload)
          response.code == '200' && (JSON(response.body)['StatusCode'] == '1' rescue false)
        end

        class << self
          attr_accessor :organization
        end

        private

        def format_mobile_number(number)
          number = number.gsub(/[^+\d#*]/, '')
          return number if number.start_with?('+41') && number.length == 12
          return '+41' + number[4..-1] if number.start_with?('0041') && number.length == 13
          return '+41' + number[1..-1] if number.start_with?('0') && number.length == 10
          nil
        end

        def uri
          URI('https://json.aspsms.com/SendTextSMS')
        end

        def payload
          {
              "UserName": user_key,
              "Password": password,
              "Originator": "DECIDIM",
              "Recipients": [ @mobile_phone_number ],
              "MessageText": translated('sms_text',code: @code, organization: organization_name),
              "AffiliateID": affiliate_id,
          }.compact.to_json
        end

        def user_key
          Rails.application.config.aspsms[:user_key]
        end

        def password
          Rails.application.config.aspsms[:password]
        end

        def affiliate_id
          Rails.application.config.aspsms[:affiliate_id]
        end

        def translated(key, *args)
          I18n.t("quartieridee.verifications.sms.aspsms_gateway.#{key}", *args)
        end

        def organization
          self.class.organization
        end

        def organization_name
          organization.try(:name)
        end

      end
    end
  end
end