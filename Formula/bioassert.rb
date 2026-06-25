class Bioassert < Formula
  desc "CLI tool for asserting properties of files in bioinformatics pipelines"
  homepage "https://github.com/PeterKneale/bioassert"
  version "4.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v4.1.1/bioassert-4.1.1-macos-arm64.tar.gz"
      sha256 "05f7cb258a10ce2995d91a92a25522d1952b50ac4d96728ed037c3d5a57d4937"
    end
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v4.1.1/bioassert-4.1.1-macos-x86_64.tar.gz"
      sha256 "47d4cf8118d2a4d570c10b310d72ca2ae8ffc4361e104953cb215b86ce8eaa9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PeterKneale/bioassert/releases/download/v4.1.1/bioassert-4.1.1-linux-x86_64.tar.gz"
      sha256 "e909f17297125838b4412954f95ff76d8e8139d5f41c8c8cdbf77888aff5e358"
    end
    on_arm do
      url "https://github.com/PeterKneale/bioassert/releases/download/v4.1.1/bioassert-4.1.1-linux-arm64.tar.gz"
      sha256 "3735957144c9fe48401365f5eb70d5501ebdbbf5655b5be3e85db24ae9b62210"
    end
  end

  def install
    bin.install "bioassert"
  end

  test do
    assert_match "bioassert #{version}", shell_output("#{bin}/bioassert --version")
  end
end
