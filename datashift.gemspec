# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "datashift"
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Statter"]
  s.date = "2012-07-09"
  s.description = "A suite of tools to move data between ActiveRecord models,databases,applications like Excel/Open Office, files and projects including Spree"
  s.email = "rubygems@autotelik.co.uk"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "LICENSE.txt",
    "README.markdown",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "datashift.gemspec",
    "lib/applications/jruby/jexcel_file.rb",
    "lib/applications/jruby/word.rb",
    "lib/datashift.rb",
    "lib/datashift/exceptions.rb",
    "lib/datashift/file_definitions.rb",
    "lib/datashift/logging.rb",
    "lib/datashift/mapping_file_definitions.rb",
    "lib/datashift/method_detail.rb",
    "lib/datashift/method_details_manager.rb",
    "lib/datashift/method_dictionary.rb",
    "lib/datashift/method_mapper.rb",
    "lib/datashift/model_mapper.rb",
    "lib/datashift/populator.rb",
    "lib/exporters/csv_exporter.rb",
    "lib/exporters/excel_exporter.rb",
    "lib/exporters/exporter_base.rb",
    "lib/generators/csv_generator.rb",
    "lib/generators/excel_generator.rb",
    "lib/generators/generator_base.rb",
    "lib/helpers/core_ext/to_b.rb",
    "lib/helpers/rake_utils.rb",
    "lib/helpers/spree_helper.rb",
    "lib/java/poi-3.7/._poi-3.7-20101029.jar5645100390082102460.tmp",
    "lib/java/poi-3.7/LICENSE",
    "lib/java/poi-3.7/NOTICE",
    "lib/java/poi-3.7/RELEASE_NOTES.txt",
    "lib/java/poi-3.7/lib/commons-logging-1.1.jar",
    "lib/java/poi-3.7/lib/junit-3.8.1.jar",
    "lib/java/poi-3.7/lib/log4j-1.2.13.jar",
    "lib/java/poi-3.7/ooxml-lib/dom4j-1.6.1.jar",
    "lib/java/poi-3.7/ooxml-lib/geronimo-stax-api_1.0_spec-1.0.jar",
    "lib/java/poi-3.7/ooxml-lib/xmlbeans-2.3.0.jar",
    "lib/java/poi-3.7/poi-3.7-20101029.jar",
    "lib/java/poi-3.7/poi-examples-3.7-20101029.jar",
    "lib/java/poi-3.7/poi-ooxml-3.7-20101029.jar",
    "lib/java/poi-3.7/poi-ooxml-schemas-3.7-20101029.jar",
    "lib/java/poi-3.7/poi-scratchpad-3.7-20101029.jar",
    "lib/loaders/csv_loader.rb",
    "lib/loaders/excel_loader.rb",
    "lib/loaders/loader_base.rb",
    "lib/loaders/paperclip/image_loader.rb",
    "lib/loaders/spreadsheet_loader.rb",
    "lib/loaders/spree/image_loader.rb",
    "lib/loaders/spree/product_loader.rb",
    "lib/thor/export_excel.thor",
    "lib/thor/generate_excel.thor",
    "lib/thor/import.thor",
    "lib/thor/spree/bootstrap_cleanup.thor",
    "lib/thor/spree/products_images.thor",
    "lib/thor/spree/reports.thor",
    "public/spree/products/large/DEMO_001_ror_bag.jpeg",
    "public/spree/products/large/DEMO_002_Powerstation.jpg",
    "public/spree/products/large/DEMO_003_ror_mug.jpeg",
    "public/spree/products/mini/DEMO_001_ror_bag.jpeg",
    "public/spree/products/mini/DEMO_002_Powerstation.jpg",
    "public/spree/products/mini/DEMO_003_ror_mug.jpeg",
    "public/spree/products/original/DEMO_001_ror_bag.jpeg",
    "public/spree/products/original/DEMO_002_Powerstation.jpg",
    "public/spree/products/original/DEMO_003_ror_mug.jpeg",
    "public/spree/products/product/DEMO_001_ror_bag.jpeg",
    "public/spree/products/product/DEMO_002_Powerstation.jpg",
    "public/spree/products/product/DEMO_003_ror_mug.jpeg",
    "public/spree/products/small/DEMO_001_ror_bag.jpeg",
    "public/spree/products/small/DEMO_002_Powerstation.jpg",
    "public/spree/products/small/DEMO_003_ror_mug.jpeg",
    "sandbox/app/controllers/application_controller.rb",
    "sandbox/config/application.rb",
    "sandbox/config/database.yml",
    "sandbox/config/environment.rb",
    "sandbox/config/environments/development.rb",
    "spec/Gemfile",
    "spec/csv_loader_spec.rb",
    "spec/datashift_spec.rb",
    "spec/db/migrate/20110803201325_create_test_bed.rb",
    "spec/excel_exporter_spec.rb",
    "spec/excel_generator_spec.rb",
    "spec/excel_loader_spec.rb",
    "spec/file_definitions.rb",
    "spec/fixtures/BadAssociationName.xls",
    "spec/fixtures/DemoNegativeTesting.xls",
    "spec/fixtures/ProjectsDefaults.yml",
    "spec/fixtures/ProjectsMultiCategories.xls",
    "spec/fixtures/ProjectsMultiCategoriesHeaderLookup.xls",
    "spec/fixtures/ProjectsSingleCategories.xls",
    "spec/fixtures/SimpleProjects.xls",
    "spec/fixtures/config/database.yml",
    "spec/fixtures/datashift_Spree_db.sqlite",
    "spec/fixtures/datashift_test_models_db.sqlite",
    "spec/fixtures/images/DEMO_001_ror_bag.jpeg",
    "spec/fixtures/images/DEMO_002_Powerstation.jpg",
    "spec/fixtures/images/DEMO_003_ror_mug.jpeg",
    "spec/fixtures/images/DEMO_004_ror_ringer.jpeg",
    "spec/fixtures/negative/SpreeProdMiss1Mandatory.csv",
    "spec/fixtures/negative/SpreeProdMiss1Mandatory.xls",
    "spec/fixtures/negative/SpreeProdMissManyMandatory.csv",
    "spec/fixtures/negative/SpreeProdMissManyMandatory.xls",
    "spec/fixtures/simple_export_spec.xls",
    "spec/fixtures/simple_template_spec.xls",
    "spec/fixtures/spree/SpreeImages.xls",
    "spec/fixtures/spree/SpreeMultiVariant.csv",
    "spec/fixtures/spree/SpreeProducts.csv",
    "spec/fixtures/spree/SpreeProducts.xls",
    "spec/fixtures/spree/SpreeProductsDefaults.yml",
    "spec/fixtures/spree/SpreeProductsMandatoryOnly.xls",
    "spec/fixtures/spree/SpreeProductsMultiColumn.csv",
    "spec/fixtures/spree/SpreeProductsMultiColumn.xls",
    "spec/fixtures/spree/SpreeProductsSimple.csv",
    "spec/fixtures/spree/SpreeProductsSimple.xls",
    "spec/fixtures/spree/SpreeProductsWithImages.csv",
    "spec/fixtures/spree/SpreeProductsWithImages.xls",
    "spec/fixtures/spree/SpreeZoneExample.csv",
    "spec/fixtures/spree/SpreeZoneExample.xls",
    "spec/fixtures/test_model_defs.rb",
    "spec/loader_spec.rb",
    "spec/method_dictionary_spec.rb",
    "spec/method_mapper_spec.rb",
    "spec/spec_helper.rb",
    "spec/spree_exporter_spec.rb",
    "spec/spree_generator_spec.rb",
    "spec/spree_images_loader_spec.rb",
    "spec/spree_loader_spec.rb",
    "spec/spree_method_mapping_spec.rb",
    "spec/thor_spec.rb",
    "tasks/config/seed_fu_product_template.erb",
    "tasks/config/tidy_config.txt",
    "tasks/db_tasks.rake",
    "tasks/export/excel_generator.rake",
    "tasks/file_tasks.rake",
    "tasks/import/csv.rake",
    "tasks/import/excel.rake",
    "tasks/word_to_seedfu.rake",
    "test/helper.rb",
    "test/test_interact.rb"
  ]
  s.homepage = "http://github.com/autotelik/datashift"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "Shift data betwen applications and Active Record"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spreadsheet>, [">= 0"])
    else
      s.add_dependency(%q<spreadsheet>, [">= 0"])
    end
  else
    s.add_dependency(%q<spreadsheet>, [">= 0"])
  end
end

