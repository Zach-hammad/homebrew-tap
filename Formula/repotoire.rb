class Repotoire < Formula
  desc "Graph-powered code analysis with 108 detectors"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.3.91"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.91/repotoire-macos-aarch64.tar.gz"
      sha256 "22bdf735e46008847e3b590ccdc10828448cb305d1ddddd1725e2f8ac5ee1bfe"
    end
  end

  on_linux do
    url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.91/repotoire-linux-x86_64.tar.gz"
    sha256 "73b4b1ba292a0a6f49cb02cb9f613504ed0151619e4382a9edd5c9fe259d3b1e"
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
