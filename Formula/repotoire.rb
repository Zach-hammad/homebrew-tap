class Repotoire < Formula
  desc "Graph-powered code analysis CLI - 81 detectors for security, architecture & quality"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.3.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.34/repotoire-macos-aarch64.tar.gz"
      sha256 "f983d5ca7d624c6eedf13f6dc3a3eb4c3908473c5a84f7cb9c6f66d2f200605e"
    end
    on_intel do
      # Intel Macs - use ARM binary with Rosetta 2
      url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.34/repotoire-macos-aarch64.tar.gz"
      sha256 "f983d5ca7d624c6eedf13f6dc3a3eb4c3908473c5a84f7cb9c6f66d2f200605e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.34/repotoire-linux-x86_64.tar.gz"
      sha256 "64b8cd65926f0a30405f361a12b233e7901e72689e165e3195ec326b640fe2ac"
    end
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
