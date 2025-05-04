class Snippy < Formula
  desc "CLI tool to generate Git commit messages"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v3.0.2/snippy-v3.0.2.whl"
  sha256 "fe308aaf2dc7c1b9203a9b2fce4318e674e1ae19c9918f06daa8146d343a0708"
  license "MIT"

  depends_on "python@3.12"

  def install
    whl_file = "snippy-#{version}-py3-none-any.whl"
    mv cached_download, whl_file

    system "#{Formula["python@3.12"].opt_bin}/python3", "-m", "ensurepip", "--upgrade"
    system "#{Formula["python@3.12"].opt_bin}/python3", "-m", "pip", "install", "--upgrade", "pip"
    system "#{Formula["python@3.12"].opt_bin}/python3", "-m", "pip", "install", "--target=#{libexec}", whl_file
    (bin/"snippy").write_env_script "#{libexec}/bin/snippy", PYTHONPATH: libexec
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end
