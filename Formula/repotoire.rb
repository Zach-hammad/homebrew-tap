class Repotoire < Formula
  desc "Graph-powered code analysis with 81 detectors"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.3.1"
  license "MIT"

  on_macos do
    url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.1/repotoire-macos-aarch64.tar.gz"
    sha256 "2081a682711895d0aba5b799b94e17148838ae888ea293d908276896ca8be8bf"
  end

  on_linux do
    url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.1/repotoire-linux-x86_64.tar.gz"
    sha256 "498997bbfccc6808962674d9f71949b1a0c70c89cbf72b733ea064ad1f73003f"
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
