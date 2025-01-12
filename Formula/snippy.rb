class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v1.1.3/snippy-v1.1.3.tar.gz"
  sha256 "6d4245d7f435084d4c2630665ab6e0e31a7ea0b0220bb2593b3851ff6006f75e"
  license "MIT"

  def install
    libexec.install "snippy", "_internal"

    (bin/"snippy").write_env_script libexec/"snippy", PYTHONHOME: libexec
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end