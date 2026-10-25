class OpencodeNanogpt < Formula
  desc "Command-line to integrate OpenCode with NanoGPT Provider"
  homepage "https://github.com/LunaticMuch/opencode-nanogpt"
  license "MIT"

  version "1.3.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/LunaticMuch/opencode-nanogpt/releases/download/v1.3.0/opencode-nanogpt-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f87eb9989ed127ee15cdd0d8b5e545cc6d41f7442a133a75049a4523fd9defb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LunaticMuch/opencode-nanogpt/releases/download/v1.3.0/opencode-nanogpt-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "707f48c0df0fba24a098c24e9848acce4f898d3352e820284321b4df784faeca"
    end
    on_intel do
      url "https://github.com/LunaticMuch/opencode-nanogpt/releases/download/v1.3.0/opencode-nanogpt-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e9c1e4b51b7364847b7c3cb2f70a837c1cfa7973e6afc26e9323f2f85a98771"
    end
  end

  def install
    bin.install "opencode-nanogpt"
  end

  test do
    assert_match "opencode-nanogpt", shell_output("#{bin}/opencode-nanogpt --version")
    assert_match "init", shell_output("#{bin}/opencode-nanogpt --help")
  end
end
