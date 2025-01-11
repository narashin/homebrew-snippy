class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/homebrew-snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/1.0.0/snippy-1.0.0.tar.gz"
  sha256 "55092d3156f683541d51e12a6d25390d1cee8e8721753b1db2dd9554f67d9c64"
  license "MIT"

  def install
    bin.install "snippy"
  end

  test do
    system "#{bin}/snippy", "--help"
  end
  end