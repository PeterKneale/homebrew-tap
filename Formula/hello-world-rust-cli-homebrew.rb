class HelloWorldRustCliHomebrew < Formula
  desc "Hello world CLI"
  homepage "https://github.com/PeterKneale/hello-world-rust-cli-homebrew"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PeterKneale/hello-world-rust-cli-homebrew/releases/download/v0.3.0/hello-world-rust-cli-homebrew-0.3.0-macos-arm64.tar.gz"
      sha256 "05189ae950b02daa068183785a148149b06ef85dd1033d31cde64bb22b58f6e5"
    end
    on_intel do
      url "https://github.com/PeterKneale/hello-world-rust-cli-homebrew/releases/download/v0.3.0/hello-world-rust-cli-homebrew-0.3.0-macos-x86_64.tar.gz"
      sha256 "4efe30676beaffaef3c460764bea1735d391030d367d59918bb55606abe689e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PeterKneale/hello-world-rust-cli-homebrew/releases/download/v0.3.0/hello-world-rust-cli-homebrew-0.3.0-linux-x86_64.tar.gz"
      sha256 "0751c500daba73c182a4e29f99e0f0dde5ea2bb5482186ce529bb9b732527803"
    end
    on_arm do
      url "https://github.com/PeterKneale/hello-world-rust-cli-homebrew/releases/download/v0.3.0/hello-world-rust-cli-homebrew-0.3.0-linux-arm64.tar.gz"
      sha256 "50e2c420797ef1ae69cb80d07c35018a47b58b2e204e73dd7b043f7916547fd1"
    end
  end

  def install
    bin.install "hello-world-rust-cli-homebrew"
  end

  test do
    assert_match "Hello", shell_output("#{bin}/hello-world-rust-cli-homebrew")
  end
end
