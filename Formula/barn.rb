class Barn < Formula
  desc "Cross-platform job daemon for media processing"
  homepage "https://github.com/samson-media/barn"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v0.1.6/barn-macos-arm64"
      sha256 "ff462bc37a11ba93bc6fa4eaf88f59438aa43b25195b1abf5d781890fcc74c78"

      def install
        bin.install "barn-macos-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v0.1.6/barn-macos-x64"
      sha256 "406e91ebefcd39957a43ef7f7a03c00bf819eb12246401de4f5cfbe7a44c95e3"

      def install
        bin.install "barn-macos-x64" => "barn"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v0.1.6/barn-linux-arm64"
      sha256 "93990a0e1c351d81838bd78096d2e78e5f181ae72b4653fae3f819522d7f7fb0"

      def install
        bin.install "barn-linux-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v0.1.6/barn-linux-x64"
      sha256 "d0ac1feec899a705c77fc31ae8fc72b06137ae9c781953191d657dcb8b7aa5d5"

      def install
        bin.install "barn-linux-x64" => "barn"
      end
    end
  end

  test do
    assert_match "barn", shell_output("#{bin}/barn --version")
  end
end
