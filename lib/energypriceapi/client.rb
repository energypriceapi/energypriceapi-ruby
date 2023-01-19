# frozen_string_literal: true

module EnergypriceAPI
  class Client
    include Connection
    include Request
    include Endpoints

    attr_accessor(*Config::ATTRIBUTES)

    def initialize(options = {})
      EnergypriceAPI::Config::ATTRIBUTES.each do |key|
        send("#{key}=", options[key] || EnergypriceAPI.config.send(key))
      end
      @logger ||= EnergypriceAPI::Logger.logger
    end

    class << self
      def configure
        block_given? ? yield(Config) : Config
      end

      def config
        Config
      end
    end
  end
end
