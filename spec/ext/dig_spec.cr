require "../spec_helper"
require "../../src/ext/dig"

describe Hash do
  describe "#dig?" do
    it "works" do
      h = {"en" => {"hello" => {"world" => "Hello world!"}, "apples" => {"one" => "1 apple", "other" => "%{count} apples"}}}
      h.dig?(%w(en apples one)).should eq "1 apple"
    end
  end
end

describe YAML::Any do
  describe "#dig?" do
    it "works" do
      y = YAML.parse(File.open(Dir.current + "/locales/en.yml"))
      y.dig?(%w(en apples one)).should eq "1 apple"
    end
  end
end

describe JSON::Any do
  describe "#dig?" do
    it "works" do
      j = JSON.parse(File.open(Dir.current + "/locales/en.json"))
      j.dig?(%w(en apples one)).should eq "1 apple"
    end
  end
end
