class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/homebrew-snippy"
  url "https://github.com/narashin/snippy/releases/download/v0.6/snippy"
  sha256 "4d84070c03f6e559994d82549fa54b3748fd108d1dd8ecbad2812106d61e006c"
  license "MIT"

  def install
    bin.install "snippy"
  end

  test do
    system "#{bin}/snippy", "--help"
  end
  end