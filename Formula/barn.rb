class Barn < Formula
  desc "Cross-platform job daemon for media processing"
  homepage "https://github.com/samson-media/barn"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v#{version}/barn-macos-arm64"
      sha256 "8566536b93acb2337233b9a87870ecd95a141c4fc41fe94b90a6f941eefab506"

      def install
        bin.install "barn-macos-arm64" => "barn"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v#{version}/barn-linux-arm64"
      sha256 "7c82b8de0d89ef08a8f5801a67f8d4e646836c8bc3ecc47a4655f00de341af8e"

      def install
        bin.install "barn-linux-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v#{version}/barn-linux-x64"
      sha256 "7ca3cdf7a0977887dbdd48847e513389eb01d44604f75e7d7817cf12b72d13fa"

      def install
        bin.install "barn-linux-x64" => "barn"
      end
    end
  end

  test do
    assert_match "barn", shell_output("#{bin}/barn --version")
  end
end
