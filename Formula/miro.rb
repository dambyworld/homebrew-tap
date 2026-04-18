class Miro < Formula
  desc "Terminal TUI for managing codex/claude-code sessions"
  homepage "https://github.com/dambyworld/miro"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dambyworld/miro/releases/download/v0.2.2/miro-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "e3664537d1febefcae70392a35e8147c472214463de07a83133d4175a2dae5f0"
    else
      url "https://github.com/dambyworld/miro/releases/download/v0.2.2/miro-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "cb6e4702c4db38f257766583b1989b2597bc81d30b5462494ad56615407c0ad8"
    end
  end

  def install
    bin.install "miro"
  end

  test do
    system "#{bin}/miro", "--version"
  end
end
