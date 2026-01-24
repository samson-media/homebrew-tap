class Barn < Formula
  desc "Cross-platform job daemon for media processing"
  homepage "https://github.com/samson-media/barn"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v0.2.1/barn-macos-arm64"
      sha256 "340b5046bab9b800e8e3a94ab9e22212f2a57f7dee5c3f80bcd197ebf4edabd2"

      def install
        bin.install "barn-macos-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v0.2.1/barn-macos-x64"
      sha256 "e24117fcd620082e8b47fef29f295d3cd89b57485bea95c4596cde8d80ab5d63"

      def install
        bin.install "barn-macos-x64" => "barn"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v0.2.1/barn-linux-arm64"
      sha256 "c4000c60138dded5f915f9f77db720749cbe6470f6939ca8c06d80eb7624f2c2"

      def install
        bin.install "barn-linux-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v0.2.1/barn-linux-x64"
      sha256 "c7f7f3d7bfec9988383dfd1543e66e9f83285009a02adde96a7cf78c11b76080"

      def install
        bin.install "barn-linux-x64" => "barn"
      end
    end
  end

  test do
    assert_match "barn", shell_output("#{bin}/barn --version")
  end
end
