class Barn < Formula
  desc "Cross-platform job daemon for media processing"
  homepage "https://github.com/samson-media/barn"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v#{version}/barn-macos-arm64"
      sha256 "96465d84451f6b2a338378dd8f6c68ed5998544d7f2527cca7e868c531d10c7f"

      def install
        bin.install "barn-macos-arm64" => "barn"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/samson-media/barn/releases/download/v#{version}/barn-linux-arm64"
      sha256 "f3f1dea009d242847e128b086bc87c423e02be6f734b874f7513b9f221a88aeb"

      def install
        bin.install "barn-linux-arm64" => "barn"
      end
    end

    on_intel do
      url "https://github.com/samson-media/barn/releases/download/v#{version}/barn-linux-x64"
      sha256 "45107eb15f676a749ebbdd350587d4167ae9756c0755dc9bff7d5e6059627af1"

      def install
        bin.install "barn-linux-x64" => "barn"
      end
    end
  end

  test do
    assert_match "barn", shell_output("#{bin}/barn --version")
  end
end
