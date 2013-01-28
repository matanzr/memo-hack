MemoHack::Application.configure do
  ENV['TUMBLR_KEY']='BsAJUThiHasUx7k4WhYfiyBjMXEdgt5IDYdVi4vRYYwSyTfH5I'
  ENV['TUMBLR_SECRET']='L1gXmEnmPFgkw5CcsozMpvhmTEI0tFKLbaw92rrP11NLsQVJwc'
  ENV['SECRET_TOKEN']='e0e0bd214d3be7e36815ccbac51240d47af9498d1f98575100c963e255c31a0a3566e461d8335eb3aaa045302b196722c5a39c83a8a8e1c2c7f3fc6e8528023d'

  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
end
