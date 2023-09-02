class Wooshh < Formula
    desc "A tool to play sound when cmd run successfully"
    homepage "https://github.com/mehuaniket/woshh"
    url "https://github.com/mehuaniket/wooshh/releases/download/v0.2.0/wooshh-v0.2.0-x86_64-apple-darwin.tar.gz"
    sha256 "c675b4783a56a95a6f5810b147d717ea99533573c05545f01ca40fea0ef39569"
    version "0.2.0"
  
    def install
      bin.install "wooshh"
    end
  end
