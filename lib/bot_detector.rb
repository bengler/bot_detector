module BotDetector
  class << self

    def patterns
        @patterns ||= Regexp.union(
        [
          /ApacheBench/,
          /bingbot\/.*; \+http:\/\/www\.bing\.com\/bingbot/,
          /^Googlebot\//,
          /^W3C_Validator\//,
          /^Googlebot-Image\//,
          /^Feedfetcher-Google/,
          /^Yahoo! Slurp\//,
          /^msnbot\//,
          /^Twiceler-/,
          /^Gigabot\//,
          /^FAST Crawler\//,
          /^Exabot\//,
          /^ia_archiver/,
          /^MJ12bot/,
          /^\/Nutch-/,
          /^Baiduspider\+/,
          /^LongURL API/,
          /^PostRank\//,
          /PycURL\//,
          /^Scanmine newsspider/,
          /^Twitterbot\//,
          /^Voyager\//,
          /^kame-rt/,
          /^Superfeedr/,
          /^BLP_bbot/,
          /^Java\//,
          /^Yandex\//,
          /^Yeti\//,
          /^EventMachine HttpClient/,
          /^Apple-PubSub\//,
          /^Feed2Mobile\//,
          /^LinkedInBot\//,
          /^FeedBurner\//,
          /^DriftStatus.Com/,
          /^MLBot/,
          /^Twingly Recon/,
          /^R6_FeedFetcher/,
          /^R6_CommentReader/,
          /^AdsBot-Google-Mobile/,
          /^LynnBot\//,
          /^psbot\//,
          /^facebookexternalhit\//
      ]
      )
      @patterns
    end

    def bot?(user_agent)
      user_agent =~ patterns
    end
  end

end
