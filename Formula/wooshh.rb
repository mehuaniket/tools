class Wooshh < Formula
    desc "A tool to play sound when cmd run successfully"
    homepage "https://github.com/mehuaniket/woshh"
    url "https://github.com/mehuaniket/wooshh/releases/download/v0.3.0/wooshh-v0.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "759eea85cb039b673cd96f08f1a356b6e28f22960d7565a765095e639f6ee769"
    version "0.3.0"
  
    def install
      bin.install "wooshh"
    end
  end
