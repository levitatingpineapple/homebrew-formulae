class YtRss < Formula
  desc "Simple RSS server for YT"
  homepage "https://github.com/levitatingpineapple/yt-rss"
  url "https://github.com/levitatingpineapple/yt-rss/releases/latest/download/yt-rss.tar.gz"
  sha256 "6b29cff18a9f25a2748103ef9df62ffc94cb17787b7ac237400e23ceb83257a1"
  version "0.1.0"
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