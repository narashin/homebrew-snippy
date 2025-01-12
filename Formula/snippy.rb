class Snippy < Formula
  desc "CLI tool to generate Git commit messages"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v2.0.12/snippy-v2.0.12.whl"
  sha256 "d76e39a07991acdc49e1a57168aaffe7433dcef65b40b67a3d2798d97a8fd519"
  license "MIT"

  depends_on "python@3.12"

  def install
    whl_file = "snippy-#{version}-py3-none-any.whl"
    mv cached_download, whl_file

    system "pip3", "install", "--no-deps", "--upgrade", "--target=#{libexec}", whl_file
    bin.install_symlink "#{libexec}/bin/snippy" => "snippy"
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end
