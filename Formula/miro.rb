class Miro < Formula
  desc "Terminal TUI for managing codex/claude-code sessions"
  homepage "https://github.com/dambyworld/miro"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dambyworld/miro/releases/download/v0.1.2/miro-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "11aa46a2dbcea929a2aa47cced08a69e1a8fd8610dd8deee603f8ea9fb214308"
    else
      url "https://github.com/dambyworld/miro/releases/download/v0.1.2/miro-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "52ff2c58e2391a50fe3b48ff300f33c77073372e4381fcf9c37c522f1f54dec6"
    end
  end

  def install
    bin.install "miro"
  end

  test do
    system "#{bin}/miro", "--version"
  end
end
