class Bioassert < Formula
  desc "CLI tool for asserting properties of files in bioinformatics pipelines"
  homepage "https://github.com/PeterKneale/bioassert"
  version "3.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v3.1.1/bioassert-3.1.1-macos-arm64.tar.gz"
      sha256 "7fc3f5fc04fc849822a47cf56c93d3551584c9ef9c43da1beab9664421cb182c"
    end
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v3.1.1/bioassert-3.1.1-macos-x86_64.tar.gz"
      sha256 "6f57004cf2f6ca5526bd63834fc320bbb634a56d4aac066c47193c75ead5d9b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v3.1.1/bioassert-3.1.1-linux-x86_64.tar.gz"
      sha256 "5b119ca3abb2fd6749c331810984e6a9006a37a72583bf939710627b26d28518"
    end
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v3.1.1/bioassert-3.1.1-linux-arm64.tar.gz"
      sha256 "4b22fe17a9eab27eda3d1ffb7be3cf7d3c71a06ea2d3af98c440e8b09d0efc9f"
    end
  end

  def install
    bin.install "bioassert"
  end

  test do
    assert_match "bioassert #{version}", shell_output("#{bin}/bioassert --version")
  end
end
