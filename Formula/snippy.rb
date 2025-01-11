class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/homebrew-snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v1.0.15/snippy-v1.0.15.tar.gz"
  sha256 "08c73740d9d0c0a3d2e5718579c6a67f6d72ddd4f6607bd372101609603be7a8"
  license "MIT"

  def install
    bin.install "snippy"
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end