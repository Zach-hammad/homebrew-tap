class Repotoire < Formula
  desc "Graph-powered code analysis with 81 detectors"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.1/repotoire-macos-aarch64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      # Intel Macs use ARM binary via Rosetta 2
      url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.1/repotoire-macos-aarch64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.1/repotoire-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
