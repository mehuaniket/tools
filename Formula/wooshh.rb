class Wooshh < Formula
    desc "A tool to play sound when cmd run successfully"
    homepage "https://github.com/mehuaniket/woshh"
    url "https://github.com/mehuaniket/wooshh/releases/download/v0.2.0/wooshh-v0.2.0-x86_64-apple-darwin.tar.gz"
    sha256 "2292c4d37fc955bdd1446c60234f754850530eea74966527779c6a26b8c62f3d"
    version "0.3.0"
  
    def install
      bin.install "wooshh"
    end
  end
