class Barn < Formula
  desc "Cross-platform job daemon for media processing"
  homepage "https://github.com/samson-media/barn"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v0.2.0/barn-macos-arm64"
      sha256 "bfe6e9521d83e8ea27a191fa66430a51969c301491592378219d7deca52d39c7"

      def install
        bin.install "barn-macos-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v0.2.0/barn-macos-x64"
      sha256 "052e7c71b49d6805c3fd19529a068a65924b02fac46c3fa96d5336e970faff22"

      def install
        bin.install "barn-macos-x64" => "barn"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v0.2.0/barn-linux-arm64"
      sha256 "f7c75f8e2732fbd5e2b4f8394cdf0a283797c64c2dc6f75c18c26ff7a1332f2c"

      def install
        bin.install "barn-linux-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v0.2.0/barn-linux-x64"
      sha256 "4e79652c474711576d2a955413b14c25b6d6f206ff8de4e8b71187d6b8a6d29d"

      def install
        bin.install "barn-linux-x64" => "barn"
      end
    end
  end

  test do
    assert_match "barn", shell_output("#{bin}/barn --version")
  end
end
