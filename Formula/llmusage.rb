class Llmusage < Formula
  desc "CLI tool to track and analyze LLM API usage across providers"
  homepage "https://github.com/openrijal/llmusage"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.3/llmusage-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "a3be443b18b26284d4a083399d6abb5b697790eed823bc88390cdd11260985d6"
    else
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.3/llmusage-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "6d90dfd5c5efcc0a660696c8cd046236f251a9d75679df7c618150ed1d33b658"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.3/llmusage-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95dfe263aed0050f927bd44f57cfdd46e876a91d8adfbbd480c8310d3ee57951"
    else
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.3/llmusage-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "54cec7bd508d5932e8ce52b24ae339eb11b98c19672528e5991fb5b43c28f3e6"
    end
  end

  def install
    bin.install "llmusage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmusage --version")
  end
end
