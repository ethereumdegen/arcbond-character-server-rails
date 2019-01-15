module LicenseHelper

  def self.generateLicenseKey

    # like b3512f4972d314da94380e1a70e6814a
    newKey = Array.new(8) { rand(256) }.pack('C*').unpack('H*').first

    return newKey

  end

end
