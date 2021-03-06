require "codeclimate-test-reporter"
CodeClimate::TestReporter.start
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails/capybara'
require 'minitest/reporters'
require 'email_spec'
require 'minitest-matchers'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CapybaraTestCase < MiniTest::Spec
  include Capybara::DSL
  register_spec_type(/page$/, self)
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def sign_in
    visit "/"
    click_on "Sign In"
    fill_in("Email", with: "clark@dailyplanet.com")
    fill_in("Password", with: "1234fake")
    click_on "Log in"
  end

  def create_profile
    visit "/profiles"
    click_on "New Profile"
    fill_in("Name", with: "Superman")
    find("img[@alt='Avatar1']").click
    click_on "Create Profile"
    visit "/profiles"
    find(".rounded").click
  end

  def add_show
    visit "/shows"
    fill_in("Search", with: "big bang theory")
    click_on "Search"
    click_on "Big Bang Theory"
    click_on "Add"
  end
end
