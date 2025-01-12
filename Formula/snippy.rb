class Snippy < Formula
  include Language::Python::Virtualenv

  url "https://github.com/narashin/homebrew-snippy/releases/download/v2.0.0/snippy-2.0.0.tar.gz"
  sha256 "SHA256"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"snippy", "--help"
  end
end
