class Snippy < Formula
  desc "CLI tool to generate Git commit messages"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v2.4.4/snippy-v2.4.4.whl"
  sha256 "0b69e1d62358ae3a43464f9af9d739c5aa976f69c8cd746029553350d5999325"
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
