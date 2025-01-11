class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/homebrew-snippy"
  url "https://github.com/narashin/snippy/releases/download/v1.0.11/snippy-v1.0.11.tar.gz"
  sha256 ""
  license "MIT"

  def install
    bin.install "snippy"
  end

  test do
    system "#{bin}/snippy", "--help"
  end
  end