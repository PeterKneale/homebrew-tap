class HelloWorldRustCliHomebrew < Formula
  desc "Hello world CLI"
  homepage "https://github.com/PeterKneale/hello-world-rust-cli-homebrew"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PeterKneale/hello-world-rust-cli-homebrew/releases/download/v0.2.0/hello-world-rust-cli-homebrew-0.2.0-macos-arm64.tar.gz"
      sha256 "664ca99d96066aeccc61bdeee8f207f6247460391abdd1f9c96b46af042648ed"
    end
    on_intel do
      url "https://github.com/PeterKneale/hello-world-rust-cli-homebrew/releases/download/v0.2.0/hello-world-rust-cli-homebrew-0.2.0-macos-x86_64.tar.gz"
      sha256 "1caf343cdb35700f7d692ae98764dd5e710a275fc3782f4002ffba4420a22a73"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PeterKneale/hello-world-rust-cli-homebrew/releases/download/v0.2.0/hello-world-rust-cli-homebrew-0.2.0-linux-x86_64.tar.gz"
      sha256 "97c33522940afdd35f3623abf62b135d5e3d0de5cc29feec197af791ae73247b"
    end
    on_arm do
      url "https://github.com/PeterKneale/hello-world-rust-cli-homebrew/releases/download/v0.2.0/hello-world-rust-cli-homebrew-0.2.0-linux-arm64.tar.gz"
      sha256 "4c73dfec6de359f5257a657b4200a18b9df9c9a07a7543fe3ba2029fde3155d4"
    end
  end

  def install
    bin.install "hello-world-rust-cli-homebrew"
  end

  test do
    assert_match "Hello", shell_output("#{bin}/hello-world-rust-cli-homebrew")
  end
end
