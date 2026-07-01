class HelloWorldRustCliHomebrew < Formula
  desc "Hello world CLI"
  homepage "https://github.com/PeterKneale/hello-world-rust-cli-homebrew"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PeterKneale/hello-world-rust-cli-homebrew/releases/download/v0.1.0/hello-world-rust-cli-homebrew-0.1.0-macos-arm64.tar.gz"
      sha256 "5cf9c8602c227cda600a01b37298fb3959b6dc441f37e3d04674054cafabd995"
    end
    on_intel do
      url "https://github.com/PeterKneale/hello-world-rust-cli-homebrew/releases/download/v0.1.0/hello-world-rust-cli-homebrew-0.1.0-macos-x86_64.tar.gz"
      sha256 "18444e973d60fa537eb7ea9c6e5b81af27e2eb26d6cb26cddaa06d39be956e91"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PeterKneale/hello-world-rust-cli-homebrew/releases/download/v0.1.0/hello-world-rust-cli-homebrew-0.1.0-linux-x86_64.tar.gz"
      sha256 "be752ca6e6e5222b7e853aa679c7db61cb4447efce31484ad8bfc9a83c11cc65"
    end
    on_arm do
      url "https://github.com/PeterKneale/hello-world-rust-cli-homebrew/releases/download/v0.1.0/hello-world-rust-cli-homebrew-0.1.0-linux-arm64.tar.gz"
      sha256 "7521345efd04be9086bbda6f92490eb15007d095a788c3b4a23e0a7a02fbf8b3"
    end
  end

  def install
    bin.install "hello-world-rust-cli-homebrew"
  end

  test do
    assert_match "Hello", shell_output("#{bin}/hello-world-rust-cli-homebrew")
  end
end
