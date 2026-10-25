class OpencodeNanogpt < Formula
  desc "Command-line to integrate OpenCode with NanoGPT Provider"
  homepage "https://github.com/LunaticMuch/opencode-nanogpt"
  license "MIT"

  version "1.2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/LunaticMuch/opencode-nanogpt/releases/download/v1.2.0/opencode-nanogpt-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "408b6815df08f890e4d8925172025f609d57ce9f57d20b49cfb2b85445c5c8c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LunaticMuch/opencode-nanogpt/releases/download/v1.2.0/opencode-nanogpt-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7896e008066d853100bfc2c0f6a3b9c5c0752bf82b89fa1663e782d9be8350e"
    end
    on_intel do
      url "https://github.com/LunaticMuch/opencode-nanogpt/releases/download/v1.2.0/opencode-nanogpt-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f89cadadec3ca086304ccfb3f3e5f3f7b882071aef0ce9758f716a09fe7834e"
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
