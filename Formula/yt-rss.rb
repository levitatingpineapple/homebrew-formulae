class YtRss < Formula
  desc "Simple RSS server for YT"
  homepage "https://github.com/levitatingpineapple/yt-rss"
  url "https://github.com/levitatingpineapple/yt-rss/releases/download/0.2.0/yt-rss.tar.gz"
  sha256 "52514e993550b657ade7b0770672117051334c684e8250a882193dcbb681b158"
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