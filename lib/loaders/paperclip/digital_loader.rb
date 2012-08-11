require 'loader_base'

module DataShift

  module DigitalLoading
    include DataShift::Logging
    
    #keeping this around so we can do multiple files per variant
    def self.get_files(path, options = {})
      glob = (options['recursive'] || options[:recursive])  ? "**/*.{mobi,epub,pdf,jpg,jpeg,png,gif}" : "*.{mobi,epub,pdf,jpg,jpeg,png,gif}"
      
      Dir.glob("#{path}/#{glob}")
    end
    
    def get_file( attachment_path )
      
      unless File.exists?(attachment_path) && File.readable?(attachment_path)
        logger.error("Cannot process Digital from #{Dir.pwd}: Invalid Path #{attachment_path}")
        raise "Cannot process loader : Invalid Path #{attachment_path}"
      end
     
      file = begin
        File.new(attachment_path, "rb")
      rescue => e
        puts e.inspect
        raise "ERROR : Failed to read digital content #{attachment_path}"
      end
      
      file
    end
    
      def create_digital(klass, attachment_path, viewable_record = nil, options = {})
        
        has_attached_file = options[:has_attached_file_name] || :attachment

         alt = if(options[:alt])
           options[:alt]
         else
           (viewable_record and viewable_record.respond_to? :name) ? viewable_record.name : ""
         end

         position = (viewable_record and viewable_record.respond_to?(:digitals)) ? viewable_record.digitals.length : 0

        file = get_file(attachment_path)
        
        begin

          digital = klass.new(
            {has_attached_file.to_sym => file},
            :without_protection => true
          )  

          # Attach to product ID for images, to variant for other digitals
          unless (options[:model_name]=='Image')
            digital.variant_id = viewable_record.id
          end
          puts digital.save ? "Success: Created Digital: #{digital.id} : #{digital.attachment_file_name} : #{digital.variant_id}" : "ERROR : Problem saving to DB Digital: #{digital.inspect}"
        rescue => e
          puts "PaperClip error - Problem creating a Digital from : #{attachment_path}"
          puts e.inspect, e.backtrace
        end
      end  
  end
end