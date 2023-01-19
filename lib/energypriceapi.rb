# frozen_string_literal: true

require 'faraday'
require 'faraday_middleware'
require 'json'
require 'logger'

require_relative 'energypriceapi/version'
require_relative 'energypriceapi/logger'

require_relative 'energypriceapi/errors/fault'

require_relative 'energypriceapi/raise_error'
require_relative 'energypriceapi/connection'
require_relative 'energypriceapi/request'
require_relative 'energypriceapi/config'
require_relative 'energypriceapi/errors'
require_relative 'energypriceapi/endpoints'
require_relative 'energypriceapi/client'
