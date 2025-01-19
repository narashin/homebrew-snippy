class Snippy < Formula
  desc "CLI tool to generate Git commit messages"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v2.2.0/snippy-v2.2.0.whl"
  sha256 "42e490a3d6cd1a26bf0ada59f56dd9f2610020d93e1be32f8bbfe92daf115767"
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
