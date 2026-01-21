class Barn < Formula
  desc "Cross-platform job daemon for media processing"
  homepage "https://github.com/samson-media/barn"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v#{version}/barn-macos-arm64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "barn-macos-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v#{version}/barn-macos-x64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "barn-macos-x64" => "barn"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v#{version}/barn-linux-x64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "barn-linux-x64" => "barn"
      end
    end
  end

  service do
    run [opt_bin/"barn", "service", "run"]
    keep_alive true
    log_path var/"log/barn.log"
    error_log_path var/"log/barn.error.log"
  end

  test do
    assert_match "barn", shell_output("#{bin}/barn --version")
  end
end
