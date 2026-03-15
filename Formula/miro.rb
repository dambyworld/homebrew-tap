class Miro < Formula
  desc "Terminal TUI for managing codex/claude-code sessions"
  homepage "https://github.com/dambyworld/miro"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dambyworld/miro/releases/download/v0.1.0/miro-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b10bb9cd67afac9c0a25ec2b1d4728a65fde5e3ca761db1d2d4e2879af416f66"
    else
      url "https://github.com/dambyworld/miro/releases/download/v0.1.0/miro-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "398f5d08cf1f51762b3e8269b0ac8d0c82979e64b85943750aa458c2da50a6b1"
    end
  end

  def install
    bin.install "miro"
  end

  test do
    system "#{bin}/miro", "--version"
  end
end
