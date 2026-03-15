class Miro < Formula
  desc "Terminal TUI for managing codex/claude-code sessions"
  homepage "https://github.com/dambyworld/miro"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dambyworld/miro/releases/download/v#{version}/miro-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "<aarch64-sha256>"
    else
      url "https://github.com/dambyworld/miro/releases/download/v#{version}/miro-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "<x86_64-sha256>"
    end
  end

  def install
    bin.install "miro"
  end

  test do
    system "#{bin}/miro", "--version"
  end
end
