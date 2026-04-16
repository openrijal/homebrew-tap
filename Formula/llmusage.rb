class Llmusage < Formula
  desc "CLI tool to track and analyze LLM API usage across providers"
  homepage "https://github.com/openrijal/llmusage"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.0/llmusage-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ac618eff5c35571ce0322bdd4bf0b4b68881526e42e8e0906456c626e0173361"
    else
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.0/llmusage-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e0e10c3b09f6f5c963dbcc993ef992ec4547bf8f5291abf86056729e1f6a8a40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.0/llmusage-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "300dd2a59dc1ef66bd862a07dac93a73a92b8a91078749d3a9631ee29e971d6f"
    else
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.0/llmusage-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e5b9170760f01099093a72b37fda9c1f98a651f665972c964eb8faaa682a0f8"
    end
  end

  def install
    bin.install "llmusage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmusage --version")
  end
end
