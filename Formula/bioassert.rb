class Bioassert < Formula
  desc "CLI tool for asserting properties of files in bioinformatics pipelines"
  homepage "https://github.com/PeterKneale/bioassert"
  version "3.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v3.1.3/bioassert-3.1.3-macos-arm64.tar.gz"
      sha256 "117b304be3aa242236bc972f95ae9943fffb24535dd81fb37f408692cdbe191a"
    end
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v3.1.3/bioassert-3.1.3-macos-x86_64.tar.gz"
      sha256 "ade7b9629f2ad759ddfd523e35c0d8fde7c146e4aeacbcbae96667c8f1327c98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v3.1.3/bioassert-3.1.3-linux-x86_64.tar.gz"
      sha256 "baf0f340aeb553856e98ad73adc2b41be17d38792d0c11c6f898466ef30f0b38"
    end
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v3.1.3/bioassert-3.1.3-linux-arm64.tar.gz"
      sha256 "5df3fa96321f9795cb743935471d1dd0b6f3465d86859f38da09cb3e617d7dd8"
    end
  end

  def install
    bin.install "bioassert"
  end

  test do
    assert_match "bioassert #{version}", shell_output("#{bin}/bioassert --version")
  end
end
