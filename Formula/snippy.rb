class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/homebrew-snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v1.0.16/snippy-v1.0.16.tar.gz"
  sha256 "a2f4434bbd3b1b3a6ea8bc54ff5c0d2a71c09f1b9c9b241c7d81cae8f144a866"
  license "MIT"

  def install
    bin.install "snippy"
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end