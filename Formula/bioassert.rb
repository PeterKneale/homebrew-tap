class Bioassert < Formula
  desc "CLI tool for asserting properties of files in bioinformatics pipelines"
  homepage "https://github.com/PeterKneale/bioassert"
  version "5.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v5.1.0/bioassert-5.1.0-macos-arm64.tar.gz"
      sha256 "c0b5a75ae44cb3907f8438cb04e3f44a70d6ef0f2097ef410355ee10800f7ab2"
    end
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v5.1.0/bioassert-5.1.0-macos-x86_64.tar.gz"
      sha256 "12276b70528687e9eee91f921606ec1aaf46e233145f1a58b2d92b419668f60e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v5.1.0/bioassert-5.1.0-linux-x86_64.tar.gz"
      sha256 "6426e592c25eae7d490b7442ede20d4d9fb108ba99e98cdc06a54ec2618ae9d7"
    end
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v5.1.0/bioassert-5.1.0-linux-arm64.tar.gz"
      sha256 "be1ac47c6973985f092068910267390cadc5bedffd8b252e83562e970c820c7d"
    end
  end

  def install
    bin.install "bioassert"
  end

  test do
    assert_match "bioassert #{version}", shell_output("#{bin}/bioassert --version")
  end
end
