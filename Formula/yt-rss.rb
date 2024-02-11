class YtRss < Formula
  desc "Simple RSS server for YT"
  homepage "https://github.com/levitatingpineapple/yt-rss"
  url "https://github.com/levitatingpineapple/yt-rss/releases/download/0.2.0/yt-rss.tar.gz"
  sha256 "a5f640e09e9e8429f0db1b553b456f477d630a13333401a2c6e88f8e6b7998e7"
  version "0.2.0"
  depends_on "yt-dlp"
  
  def install
    bin.install "yt-rss"
  end
  
  service do
    run opt_bin/"yt-rss"
    environment_variables PATH: std_service_path_env
    keep_alive true
    interval 10
  end
end