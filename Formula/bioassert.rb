class Bioassert < Formula
  desc "CLI tool for asserting properties of files in bioinformatics pipelines"
  homepage "https://github.com/PeterKneale/bioassert"
  version "4.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v4.0.0/bioassert-4.0.0-macos-arm64.tar.gz"
      sha256 "d4da85e3f4d059769be39b4a56ad2ddc8bdcfdfe4fe5c805bc0eccc6f6df5f8f"
    end
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v4.0.0/bioassert-4.0.0-macos-x86_64.tar.gz"
      sha256 "ba06b70e1b64af6baa3abdef14f48ccbf7e38571f4548de3709ac36db6f5ec50"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v4.0.0/bioassert-4.0.0-linux-x86_64.tar.gz"
      sha256 "9cb72f93e6e8289209a77d2d34010a3d6942df4b4d6280c5b3112f8f85d64c2c"
    end
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v4.0.0/bioassert-4.0.0-linux-arm64.tar.gz"
      sha256 "540b1345e7b3a23d0668c27c5a4959bba50070b5caa88d3b421efc4526d90969"
    end
  end

  def install
    bin.install "bioassert"
  end

  test do
    assert_match "bioassert #{version}", shell_output("#{bin}/bioassert --version")
  end
end
