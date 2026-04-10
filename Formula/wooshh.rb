class Wooshh < Formula
  desc "A tool to play sound when cmd run successfully"
  homepage "https://github.com/mehuaniket/wooshh"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/mehuaniket/wooshh/releases/download/v#{version}/wooshh-bundle-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d9b075fdb1c23d7230dd9362a47b8990d748228c09193a447f63479f65951103"
    end

    on_intel do
      url "https://github.com/mehuaniket/wooshh/releases/download/v#{version}/wooshh-bundle-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5dbf6f1cfd55e5a3ddf94e36d40791c3a9ec8977c698420006d630e7e0a65852"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mehuaniket/wooshh/releases/download/v#{version}/wooshh-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38e8d3be2cfccf20b42cd1d94b11378fd7bf896fdbcb3225a60656659539cb42"
    end
  end

  def install
    bin.install Dir["**/wooshh"].first
    libexec.install Dir["**/WooshhNotifier.app"].first if OS.mac?
  end

  def post_install
    return unless OS.mac?
    return unless (libexec/"WooshhNotifier.app").exist?

    system "/bin/mkdir", "-p", "/Applications"
    system "/bin/rm", "-rf", "/Applications/WooshhNotifier.app"
    system "/bin/cp", "-R", (libexec/"WooshhNotifier.app"), "/Applications/"
  end
end
