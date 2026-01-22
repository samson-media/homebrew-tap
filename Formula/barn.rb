class Barn < Formula
  desc "Cross-platform job daemon for media processing"
  homepage "https://github.com/samson-media/barn"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v0.1.7/barn-macos-arm64"
      sha256 "e26e4813af0fc0eaa41d6e0fbdd8fed4a1783f8c96985e7b3ee75b418ef4ea82"

      def install
        bin.install "barn-macos-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v0.1.7/barn-macos-x64"
      sha256 "33915ea1d87cbbae377e9775a8344afe7f02a0c63c7481e535f31af5e9499d56"

      def install
        bin.install "barn-macos-x64" => "barn"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v0.1.7/barn-linux-arm64"
      sha256 "2a412d486d0eee2c20a2bde8d770b533832106a374c09af4937fbfdfb08a16a6"

      def install
        bin.install "barn-linux-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v0.1.7/barn-linux-x64"
      sha256 "0ca6cc9814077c4c9226c0e03d86d95c4acfb0afa46a387937dd8415059cc45c"

      def install
        bin.install "barn-linux-x64" => "barn"
      end
    end
  end

  test do
    assert_match "barn", shell_output("#{bin}/barn --version")
  end
end
