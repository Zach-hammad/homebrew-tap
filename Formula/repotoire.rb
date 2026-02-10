class Repotoire < Formula
  desc "Code analysis CLI with 81 detectors for security, architecture & quality"
  homepage "https://github.com/Zach-hammad/repotoire"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.2/repotoire-macos-aarch64.tar.gz"
      sha256 "5dfc63346d400dd330ed7768c6c06594569e14afa1f5df2cf827084bab1ddb1d"
    end
    on_intel do
      # Intel Macs can use cargo install or Rosetta 2
      url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.2/repotoire-macos-aarch64.tar.gz"
      sha256 "5dfc63346d400dd330ed7768c6c06594569e14afa1f5df2cf827084bab1ddb1d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zach-hammad/repotoire/releases/download/v0.3.2/repotoire-linux-x86_64.tar.gz"
      sha256 "e554cc6a2d960270857eb74cb27399584aca9a3f1932224e31184b1aff8b68d1"
    end
  end

  def install
    bin.install "repotoire"
  end

  test do
    assert_match "repotoire #{version}", shell_output("#{bin}/repotoire --version")
  end
end
