class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/homebrew-snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/1.0.1/snippy-1.0.1.tar.gz"
  sha256 "f0b606d47d628a0130a59e6f2664706a1dd8bf0d32e7cdb2eb9fc68d67ee99a8"
  license "MIT"

  def install
    bin.install "snippy"
  end

  test do
    system "#{bin}/snippy", "--help"
  end
  end