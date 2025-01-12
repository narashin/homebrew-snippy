class Snippy < Formula
  desc "CLI tool to generate Git commit messages"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v2.0.3/snippy-2.0.3-py3-none-any.whl"
  sha256 "your-sha256-here"
  license "MIT"

  depends_on "python@3.12"

  def install
    # Copy the wheel file to libexec first
    whl_file = "#{buildpath}/snippy-#{version}-py3-none-any.whl"
    cp whl_file, libexec

    # Install the package using pip3
    system "pip3", "install", "--no-deps", "--upgrade", "--target=#{libexec}", "#{libexec}/snippy-#{version}-py3-none-any.whl"
    
    # Create a symlink to the binary
    bin.install_symlink "#{libexec}/bin/snippy" => "snippy"
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end
