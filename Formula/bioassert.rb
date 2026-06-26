class Bioassert < Formula
  desc "CLI tool for asserting properties of files in bioinformatics pipelines"
  homepage "https://github.com/PeterKneale/bioassert"
  version "5.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v5.0.0/bioassert-5.0.0-macos-arm64.tar.gz"
      sha256 "93b0226e8f45da0a5a5c6717aabdbea3c9e825db188f80db54d2f004a267ac55"
    end
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v5.0.0/bioassert-5.0.0-macos-x86_64.tar.gz"
      sha256 "987be97eda961729f466f140596ef05b3d877f64ceceeec7640b677e363f8b09"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v5.0.0/bioassert-5.0.0-linux-x86_64.tar.gz"
      sha256 "78a79e8ed4be7c5006c013437f348c3959a555f31a77695440f524554e9bfd76"
    end
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v5.0.0/bioassert-5.0.0-linux-arm64.tar.gz"
      sha256 "72b69b7947f46814f06a52fe85b9aaec252a67884451d324bbb4faf1fca12b4a"
    end
  end

  def install
    bin.install "bioassert"
  end

  test do
    assert_match "bioassert #{version}", shell_output("#{bin}/bioassert --version")
  end
end
