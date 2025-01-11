class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v1.0.14/snippy-v1.0.14.tar.gz"
  sha256 "06a45b0049885cf6c35a32178808d04da0d41e0c82405702ae404f80688376ac"
  license "MIT"

  def install
    bin.install "snippy"
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end