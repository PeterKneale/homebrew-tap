class Bioassert < Formula
  desc "CLI tool for asserting properties of files in bioinformatics pipelines"
  homepage "https://github.com/PeterKneale/bioassert"
  version "4.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v4.1.0/bioassert-4.1.0-macos-arm64.tar.gz"
      sha256 "7e97501d5d7289a156b9a5bef6627a2b2acf1f9285b4562fcc0a441590a65a2f"
    end
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v4.1.0/bioassert-4.1.0-macos-x86_64.tar.gz"
      sha256 "5553e0292f383b107f2a7cb5a1bb12de08264198ace4c6f96c802ca6bdf8441e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v4.1.0/bioassert-4.1.0-linux-x86_64.tar.gz"
      sha256 "ecaa65874ed4628f6a9822ff7e43f96d1f54ac8be2514dcc9008435bd3131910"
    end
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v4.1.0/bioassert-4.1.0-linux-arm64.tar.gz"
      sha256 "d222f2f38418b15e6d55654175778f1fe448e72451df4d5dcaedd7dbdcb5dd6c"
    end
  end

  def install
    bin.install "bioassert"
  end

  test do
    assert_match "bioassert #{version}", shell_output("#{bin}/bioassert --version")
  end
end
