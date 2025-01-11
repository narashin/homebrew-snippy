class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v1.0.18/snippy-v1.0.18.tar.gz"
  sha256 "b9e7f21fd6a0c1ad9583b7e2b8ecf57c7eae706ab48f22e8929dc5b8be43f349"
  license "MIT"

  def install
    bin.install "snippy"
    chmod "+x", bin/"snippy"
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end