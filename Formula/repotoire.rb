class Repotoire < Formula
  desc "Graph-powered code analysis CLI - 81 detectors for security, architecture & quality"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.3.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.35/repotoire-macos-aarch64.tar.gz"
      sha256 "6e842a39b3ad6bf8d93e4a425ff27b2f384124ad87afe02a3be74b949bab4641"
    end
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.35/repotoire-macos-aarch64.tar.gz"
      sha256 "6e842a39b3ad6bf8d93e4a425ff27b2f384124ad87afe02a3be74b949bab4641"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.35/repotoire-linux-x86_64.tar.gz"
      sha256 "9291e96e916debb8acdd263afb29c9a1128ecbe3535688dcffdff090957be93f"
    end
  end

  def install
    bin.install "repotoire"
  end

  test do
    system "#{bin}/repotoire", "--version"
  end
end
