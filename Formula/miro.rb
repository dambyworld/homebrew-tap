class Miro < Formula
  desc "Terminal TUI for managing codex/claude-code sessions"
  homepage "https://github.com/dambyworld/miro"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dambyworld/miro/releases/download/v0.2.0/miro-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "387860500f61c4be2dd40a96825599bde7696191e16fe80644f5dc496ff2fe1b"
    else
      url "https://github.com/dambyworld/miro/releases/download/v0.2.0/miro-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "ee56763e5b1557cedfeb45854aa5a751ee1e7dbc4edc26fbf7c1ff30314cc6f2"
    end
  end

  def install
    bin.install "miro"
  end

  test do
    system "#{bin}/miro", "--version"
  end
end
