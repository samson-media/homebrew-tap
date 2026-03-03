class Barn < Formula
  desc "Cross-platform job daemon for media processing"
  homepage "https://github.com/samson-media/barn"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v0.3.0/barn-macos-arm64"
      sha256 "69e8e464d837fc024633997f8cfc6f38bd46a551d367384e366b224710a546cb"

      def install
        bin.install "barn-macos-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v0.3.0/barn-macos-x64"
      sha256 "bdf0beed062a5b66df2e8f1dba69e0cc92b28a52836faa048bf3e93abd5a4e6f"

      def install
        bin.install "barn-macos-x64" => "barn"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v0.3.0/barn-linux-arm64"
      sha256 "80184d525903c213f5d9ec67a3b716712ba21ad1af00b9cea61866b693ec6240"

      def install
        bin.install "barn-linux-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v0.3.0/barn-linux-x64"
      sha256 "44a426ce775a4c2cc2c07806064dc07e83602b820768522ddbce877088a44834"

      def install
        bin.install "barn-linux-x64" => "barn"
      end
    end
  end

  test do
    assert_match "barn", shell_output("#{bin}/barn --version")
  end
end
