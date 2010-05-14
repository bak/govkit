module GovKit
  class Configuration
    attr_accessor :fiftystates_apikey, :fiftystates_base_url
    attr_accessor :votesmart_apikey, :votesmart_base_url

    def initialize
      @fiftystates_apikey = ''
      @fiftystates_base_url = 'fiftystates-dev.sunlightlabs.com/api'

      @votesmart_apikey = ''
      @votesmart_base_url = 'api.votesmart.org/'
    end
  end

  class << self
    attr_accessor :configuration
  end

  # Configure GovKit in config/initializers/govkit.rb
  #
  # @example
  #   GovKit.configure do |config|
  #     config.fiftystates_apikey = ''
  #   end
  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end