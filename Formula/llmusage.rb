class Llmusage < Formula
  desc "CLI tool to track and analyze LLM API usage across providers"
  homepage "https://github.com/openrijal/llmusage"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.4/llmusage-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "7a5a329db19657330eb522fad327ae7f8d00f43cede4085b6564df4e7ea7fc08"
    else
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.4/llmusage-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "3add9c7a18e61837e47929c1b5b6c4ece744de1c9be6e3a8eb9a58631618b9f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.4/llmusage-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2029cea287ba74e0b48f20d6163bc09ce058b705b83c16775472bd736a83d71c"
    else
      url "https://github.com/openrijal/llmusage/releases/download/v0.1.4/llmusage-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64b1c28fc69fa59e13f19de05ff1f9259ee0f25a2a61ba8e07d7cb140f65033a"
    end
  end

  def install
    bin.install "llmusage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmusage --version")
  end
end
