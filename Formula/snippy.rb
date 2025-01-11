class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/homebrew-snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/1.0.1/snippy-1.0.1.tar.gz"
  sha256 "6384efb91442644eb21b5eb04415a7f5922b508ed1991c99705e64b0a55b098b"
  license "MIT"

  def install
    bin.install "snippy"
  end

  test do
    system "#{bin}/snippy", "--help"
  end
  end