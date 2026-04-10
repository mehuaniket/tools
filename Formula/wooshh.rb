class Wooshh < Formula
  desc "A tool to play sound when cmd run successfully"
  homepage "https://github.com/mehuaniket/wooshh"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/mehuaniket/wooshh/releases/download/v#{version}/wooshh-bundle-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "c6daa38c43337dc933925c692996ceff24fc35478d434b672a84d63601b5f72d"
    end

    on_intel do
      url "https://github.com/mehuaniket/wooshh/releases/download/v#{version}/wooshh-bundle-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "447ff32c03555a01626f6b6da85dc8039a58eef972b66a846cc68ea86c861f49"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mehuaniket/wooshh/releases/download/v#{version}/wooshh-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d88b818897ff194bb8ba623c7421b75290806d8a9245bab311ea47ccf765fb9"
    end
  end

  def install
    bin.install Dir["**/wooshh"].first
    notifier = Dir["**/WooshhNotifier.app"].first
    libexec.install notifier if OS.mac? && notifier
  end

  def caveats
    return unless OS.mac?

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
