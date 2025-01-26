class Snippy < Formula
  desc "CLI tool to generate Git commit messages"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v2.4.9/snippy-v2.4.9.whl"
  sha256 "4102143375e2e8df47293c6422a4711a126255def28129ad3250c74bcd7d7731"
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
