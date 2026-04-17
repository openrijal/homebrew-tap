class Llmusage < Formula
  desc "CLI tool to track and analyze LLM API usage across providers"
  homepage "https://github.com/openrijal/llmusage"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.2/llmusage-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "eca6e602748689625dbe9f83eb830ffa045b169c3fdc5935d6fdcef64a236040"
    else
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.2/llmusage-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "086418ff607e4e6f47259b76d66414261619255868c3e30cef157c767f646636"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.2/llmusage-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "640b827ec1050b39d1ed46349dc6c81fc93ee2dbffcdf2b10decc7f6e80216c3"
    else
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.2/llmusage-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "486d3317e938c3a265628eb7650f954409b21a1e584c930a848ffaeda5874a35"
    end
  end

  def install
    bin.install "llmusage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmusage --version")
  end
end
