require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

FORTUNES = [
  'there can be only one, Highlander.',
  'tea, Earl Grey, hot. (Star Trek)',
  'may the Force be with you. (Star Wars)',
  'you are my only hope. (Star Wars)',
  'make it so! (Star Trek)'
]

describe "Haphazard" do
  before :all do
    build_model(:fortunes) { string :text }
    FORTUNES.each { |text| Fortune.create! :text => text }
  end
  
  it "should find a random model" do
    fortune = Fortune.random
    fortune.should_not == nil
  end
  
  it "should respect where clauses" do
    fortune = Fortune.where("text LIKE '%Star Wars%'").random
    fortune.text.should_not match /Star Trek/i
    fortune.text.should match /Star Wars/i
  end
end
