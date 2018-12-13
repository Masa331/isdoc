require "isdoc/version"
# require 'nokogiri'
# require 'rxsd'
require 'xml'

module Isdoc
  XSD_PATH = 'xsd/isdoc-invoice-6.0.1.xsd'
  XSD_URI = 'file:///home/masa331/pracovni/imagine/data_bridge/xsd/isdoc-invoice-6.0.1.xsd'

  # def self.schema
  #   schema = Nokogiri::XML::Schema(File.read(XSD_PATH))
  #   doc = Nokogiri::XML(File.read('priklad2-egov.isdoc'))
  #
  #   schema
  # end
  #
  # def self.rxsd
  #   xsd = RXSD::Parser.parse_xsd(uri: XSD_URI)
  #
  #   require 'pry'; binding.pry
  #
  #   xsd
  # end

  def self.xml

    require 'pry'; binding.pry

    xsd = XML::Schema.new(XSD_URI)

    xsd
  end
end
