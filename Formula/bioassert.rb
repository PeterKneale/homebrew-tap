class Bioassert < Formula
  desc "CLI tool for asserting properties of files in bioinformatics pipelines"
  homepage "https://github.com/PeterKneale/bioassert"
  version "5.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v5.0.1/bioassert-5.0.1-macos-arm64.tar.gz"
      sha256 "03906ef7e41b9ef7973612b9a8c598245046da9ae7a0f85e41e39b3edc307e00"
    end
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v5.0.1/bioassert-5.0.1-macos-x86_64.tar.gz"
      sha256 "cf0f146671794aafb87db08193ade3068331fac7b1624e98dcb05f2d8aebf316"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v5.0.1/bioassert-5.0.1-linux-x86_64.tar.gz"
      sha256 "0e67983f4a8c95109ddb18ab2f33c19611d7189d1331c67af641c9f28f002442"
    end
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v5.0.1/bioassert-5.0.1-linux-arm64.tar.gz"
      sha256 "16963ac5a4ed3c3f2a0b4948b5454795cb50511cfdb3073ec07bfb32de7d568a"
    end
  end

  def install
    bin.install "bioassert"
  end

  test do
    assert_match "bioassert #{version}", shell_output("#{bin}/bioassert --version")
  end
end
