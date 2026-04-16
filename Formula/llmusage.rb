class Llmusage < Formula
  desc "CLI tool to track and analyze LLM API usage across providers"
  homepage "https://github.com/openrijal/llmusage"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.1/llmusage-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "efa2b2be32074502ced0ab3b49df7aa1013433f94de778892a8ee2c237a4a130"
    else
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.1/llmusage-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "695b1572c1ac07ad3696845c52371dc519192d703df1777f590ae9c7fa307b41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.1/llmusage-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c942062493c22b69edd5f1c661fb1ee425d34f2d7e9b0edc5c033066739ad885"
    else
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.1/llmusage-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a35b5cd928023d0ca5cb1b5f5115e0fbb9b7c472fad5284bedf504693914f81e"
    end
  end

  def install
    bin.install "llmusage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmusage --version")
  end
end
