class Pk < Formula
  desc "Project knowledge — structured intake, search, and recall"
  homepage "https://github.com/justEstif/pk"
  url "https://registry.npmjs.org/@justestif/pk/-/pk-0.8.0.tgz"
  sha256 "cfd9b0f63dce01b2fb88ecc6bcc51132a761d25a39bbd608d8089248cebbd3b4"
  license "MIT"

  depends_on "oven-sh/bun/bun"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"dist/index.js" => "pk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pk --version")
  end
end
