class Barn < Formula
  desc "Cross-platform job daemon for media processing"
  homepage "https://github.com/samson-media/barn"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v#{version}/barn-macos-arm64"
      sha256 "cfff9342866af500cf1cc63761ba6ff1223ae8a8cfbcffc39377a367062dfe4e"

      def install
        bin.install "barn-macos-arm64" => "barn"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v#{version}/barn-linux-arm64"
      sha256 "04d6ba7eccca5f96f292c8b1027316bab3debda7eb3888cb3b9456caa081301d"

      def install
        bin.install "barn-linux-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v#{version}/barn-linux-x64"
      sha256 "dbd82112dd91460de90c725f34bcb8d5cbb517f175c92c3e9c0d0526c583f2a4"

      def install
        bin.install "barn-linux-x64" => "barn"
      end
    end
  end

  test do
    assert_match "barn", shell_output("#{bin}/barn --version")
  end
end
