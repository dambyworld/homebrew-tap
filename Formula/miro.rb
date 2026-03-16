class Miro < Formula
  desc "Terminal TUI for managing codex/claude-code sessions"
  homepage "https://github.com/dambyworld/miro"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dambyworld/miro/releases/download/v0.1.1/miro-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "4bcaa85eb927826b62787cd5c4c3a0d095bd1f139de0d76de88f0ff48c3dc7bb"
    else
      url "https://github.com/dambyworld/miro/releases/download/v0.1.1/miro-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "4d3fb604d9a59415fb6c20c1fe4205d94ed1ba1a75286de2ca1528d1bdd5cfda"
    end
  end

  def install
    bin.install "miro"
  end

  test do
    system "#{bin}/miro", "--version"
  end
end
