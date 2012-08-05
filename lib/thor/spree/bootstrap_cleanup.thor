# Copyright:: (c) Autotelik Media Ltd 2012
# Author ::   Tom Statter
# Date ::     March 2012
# License::   MIT. Free, Open Source.
#
# Usage::
# bundle exec thor help datashift:spreeboot
# bundle exec thor datashift:spreeboot:cleanup
#
# Note, not DataShift, case sensitive, create namespace for command line : datashift

require File.expand_path('config/environment.rb')


module Datashift
        
  class Spreeboot < Thor     
  
    include DataShift::Logging
       
    desc "cleanup", "Remove Spree Product/Variant data from DB"
    
    def cleanup()

      require 'spree_helper'

      require File.expand_path('config/environment.rb')

      ActiveRecord::Base.connection.execute("TRUNCATE spree_products_taxons")
      
      cleanup =  %w{ Image OptionType OptionValue 
                    Product Property ProductGroup ProductProperty ProductOptionType 
                    Variant Taxonomy Taxon Digital
      }

      cleanup.each do |k|
        klass = DataShift::SpreeHelper::get_spree_class(k)
        if(klass)
          puts "Clearing model #{klass}"
          klass.delete_all
        else
          puts "WARNING - Could not find AR model for class name #{k}"
        end
      end
      
      image_bank = 'public/spree/products'
      
      if(File.exists?(image_bank) )
        puts "Removing old Product assets from '#{image_bank}'"
        FileUtils::rm_rf(image_bank) 
      end
      
      FileUtils::rm_rf('MissingRecords') if(File.exists?('MissingRecords') )

	  digital_bank='private/digitals'
	  if(File.exists?(digital_bank) )
        puts "Removing old Product assets from '#{digital_bank}'"
        FileUtils::rm_rf(digital_bank) 
      end

	  digital_sample_bank='public/digital_samples'
	  if(File.exists?(digital_sample_bank) )
        puts "Removing old Product assets from '#{digital_sample_bank}'"
        FileUtils::rm_rf(digital_sample_bank) 
      end
	  
      
    end
  
  end
end