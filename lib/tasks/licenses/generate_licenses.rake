require "#{Rails.root}/app/helpers/license_helper"
include LicenseHelper

namespace :db do



 desc "Build more licenses"

     task :generate_licenses  => :environment do

       (1..10).each do |i|
          license =  License.create(
             key: LicenseHelper.generateLicenseKey,

           )

            p 'Generated ' + license.to_json

       end



     end



end
