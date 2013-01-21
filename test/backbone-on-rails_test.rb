require 'test_helper'

class BackboneOnRailsTest < Rails::Generators::TestCase

  destination File.expand_path("../../tmp", __FILE__)

  def setup
    @app = Dummy::Application
  end

  test "underscore.js is found as an asset" do
    assert_not_nil @app.assets["underscore"]
    assert_file "#{BackboneOnRails::Engine.root}/vendor/assets/javascripts/underscore.js", /1.4.3/
  end

  test "backbone.js is found as an asset" do
    assert_not_nil @app.assets["backbone"]
    assert_file "#{BackboneOnRails::Engine.root}/vendor/assets/javascripts/backbone.js", /0.9.10/
  end

end
