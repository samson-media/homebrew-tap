class Barn < Formula
  desc "Cross-platform job daemon for media processing"
  homepage "https://github.com/samson-media/barn"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v0.1.5/barn-macos-arm64"
      sha256 "b9c8b7c0d95ac7935d717f7f8ebb69a00542cefc84a23d9d90f9ade21eb260c0"

      def install
        bin.install "barn-macos-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v0.1.5/barn-macos-x64"
      sha256 "024f81a60e34d5fd4a4c54584345486b4c7fe7114180b59cc3492e44fb8e1a0e"

      def install
        bin.install "barn-macos-x64" => "barn"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v0.1.5/barn-linux-arm64"
      sha256 "c69173f4ba3242ebb7807139dd4b2d3a5ec61158fbdc6eed6295d3d56ff306b4"

      def install
        bin.install "barn-linux-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v0.1.5/barn-linux-x64"
      sha256 "01cd3ae8b81b5f8fd5178f20e418b2a59122e5767a52761444100bf75e4f8495"

      def install
        bin.install "barn-linux-x64" => "barn"
      end
    end
  end

  test do
    assert_match "barn", shell_output("#{bin}/barn --version")
  end
end
