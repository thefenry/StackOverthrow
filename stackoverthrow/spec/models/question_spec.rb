require 'spec_helper'

describe Question do
  context "validations" do
    it { should validate_presence_of :text }
    it { should validate_presence_of :title }
  end

  context "associations" do
    it { should have_many(:answers)}
  end
end