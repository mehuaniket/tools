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
      url "https://github.com/mehuaniket/wooshh/releases/download/v#{version}/wooshh-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a518ab7016b7d2e6f178f805f88c16d0eda622838e8812ee1a0fade83364458e"
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
    if OS.mac? && Hardware::CPU.arm?
      notifier = Dir["**/WooshhNotifier.app"].first
      libexec.install notifier if notifier
    end
  end

  def caveats
    return unless OS.mac?

    if Hardware::CPU.intel?
      <<~EOS
        Intel macOS installs the CLI-only artifact for compatibility.
        WooshhNotifier.app is currently available only in the ARM macOS bundle.
      EOS
    else
      <<~EOS
        WooshhNotifier.app is installed to:
          #{libexec}/WooshhNotifier.app

        Homebrew formulae cannot write to /Applications during install.
        Copy it manually with one of:
          cp -R "#{libexec}/WooshhNotifier.app" "$HOME/Applications/"
          sudo cp -R "#{libexec}/WooshhNotifier.app" /Applications/
      EOS
    end
  end
end
