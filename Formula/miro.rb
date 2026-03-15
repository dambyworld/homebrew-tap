class Miro < Formula
  desc "Terminal TUI for managing codex/claude-code sessions"
  homepage "https://github.com/dambyworld/miro"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dambyworld/miro/releases/download/v0.1.0/miro-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "10f4536ab47d9cb2d1bb4074f7dad4c803e2eb5b79092d826d9f5a27dbccfbeb"
    else
      url "https://github.com/dambyworld/miro/releases/download/v0.1.0/miro-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "810672ee56f96abdc1420e828402b33510d89907536fd7d5860f87f0b4cd8b62"
    end
  end

  def install
    bin.install "miro"
  end

  test do
    system "#{bin}/miro", "--version"
  end
end
