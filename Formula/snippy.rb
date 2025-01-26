class Snippy < Formula
  desc "CLI tool to generate Git commit messages"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v2.4.7/snippy-v2.4.7.whl"
  sha256 "25e8311acac7d4ea2f9e972e17e159eac4187d8c9595ce8da4f2414bf52d3b99"
  license "MIT"

  depends_on "python@3.12"

  def install
    whl_file = "snippy-#{version}-py3-none-any.whl"
    mv cached_download, whl_file

    system "pip3", "install", "--upgrade", "--target=#{libexec}", whl_file
    (bin/"snippy").write_env_script "#{libexec}/bin/snippy", PYTHONPATH: libexec
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end
