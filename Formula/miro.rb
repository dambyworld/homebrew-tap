class Miro < Formula
  desc "Terminal TUI for managing codex/claude-code sessions"
  homepage "https://github.com/dambyworld/miro"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dambyworld/miro/releases/download/v0.2.1/miro-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "8a4e4b8695af44ff76403c1195eed5f7fd38157965c96fa8f37ea61c112db997"
    else
      url "https://github.com/dambyworld/miro/releases/download/v0.2.1/miro-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "59df2230f5a4d013c7608d747c84cd81fd63ad04c7d46759740568765be01acb"
    end
  end

  def install
    bin.install "miro"
  end

  test do
    system "#{bin}/miro", "--version"
  end
end
