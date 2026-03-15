class Miro < Formula
  desc "Terminal TUI for managing codex/claude-code sessions"
  homepage "https://github.com/dambyworld/miro"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dambyworld/miro/releases/download/v0.1.0/miro-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "373d96984c02cd20385e184c544b05dc44094285c2e6be05f5de83e35656bea5"
    else
      url "https://github.com/dambyworld/miro/releases/download/v0.1.0/miro-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "df7b780ecc0d7139efc6e07fa2ee45aa4f9fa98408e01275934c4d39e0f9ae25"
    end
  end

  def install
    bin.install "miro"
  end

  test do
    system "#{bin}/miro", "--version"
  end
end
