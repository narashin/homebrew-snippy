class Snippy < Formula
  desc "CLI tool to generate Git commit messages"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v2.0.3/snippy-2.0.3-py3-none-any.whl"
  sha256 "your-sha256-here"
  license "MIT"

  depends_on "python@3.12"

  def install
    system "pip3", "install", "--no-deps", "--upgrade", "--target=#{libexec}", cached_download
    bin.install_symlink "#{libexec}/bin/snippy" => "snippy"
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end
