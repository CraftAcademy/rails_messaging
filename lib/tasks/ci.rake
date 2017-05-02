# frozen_string_literal: true

namespace :ci do
  require 'rspec/core/rake_task'
  require 'cucumber/rake/task'
  desc 'run all feature and unit tests'
  task test_all: :environment do
    task tests: %i[spec cucumber]
  end
end
