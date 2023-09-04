class Wooshh < Formula
    desc "A tool to play sound when cmd run successfully"
    homepage "https://github.com/mehuaniket/woshh"
    url "https://github.com/mehuaniket/wooshh/releases/download/v0.2.1/wooshh-v0.2.1-x86_64-apple-darwin.tar.gz"
    sha256 "859732114c5e83b8cc921af4aed1b5958774502a32d6bbeaadfb7fc102475fc3"
    version "0.2.1"
  
    def install
      bin.install "wooshh"
    end
  end
