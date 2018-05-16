module SpreeNotifyMe
  module Generators
    class InstallGenerator < Rails::Generators::Base

      class_option :auto_run_migrations, :type => :boolean, :default => false
      # class_option :auto_run_tasks, :type => :boolean, :default => false
      #source_root File.expand_path('../../templates', __FILE__)
      def add_javascripts
        append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require spree/frontend/spree_notify_me\n"
      end

      def add_stylesheets
        inject_into_file 'vendor/assets/stylesheets/spree/frontend/all.css', "*= require spree/frontend/spree_notify_me\n", :before => /\*\//, :verbose => true
      end
      
      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_notify_me'
      end

      def run_migrations
        run_migrations = options[:auto_run_migrations] || ['', 'y', 'Y'].include?(ask 'Would you like to run the migrations now? [Y/n]')
        if run_migrations
          run 'bundle exec rake db:migrate'
        else
          puts 'Skipping rake db:migrate, don\'t forget to run it!'
        end
      end
      def run_tasks
        # run_tasks = options[:auto_run_tasks] || ['', 'y', 'Y'].include?(ask 'Would you like to run the default dhl shipping boxes now? [Y/n]')
        # if run_tasks
        #   run 'bundle exec rake shipping_dhl_boxes:create'
        # else
        #   puts 'Skipping shipping dhl types, don\'t forget to run it!'
        # end
      end
    end
  end
end