class Repotoire < Formula
  desc "Graph-powered code analysis with 108 detectors"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.3.99"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-aarch64.tar.gz"
      sha256 "b45995f8e36dcad19e698fb8919b5f12f8a84151dd02e21f10c972849fccb8ec"
    end
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-macos-x86_64.tar.gz"
      sha256 "230d37a10754bd9e84483386aab79d70d293d8b8a22908029eb0d9d68e7521d2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v#{version}/repotoire-linux-x86_64.tar.gz"
      sha256 "81da6be64c9b1b5d986cb14ade67169815b9b2ad5050564d23f971ace1de2d9b"
    end
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
