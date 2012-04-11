require 'bot_detector'

describe BotDetector do
  it "detects a bot" do
    BotDetector.bot?('Superfeedr 1.8.9 <ugly as hell>').should be_true
  end

  it "doesn't say it's a bot if it's not" do
    BotDetector.bot?('The Big Mister Smith v7.42 <in ur face>').should be_false
  end
end
