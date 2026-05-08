class Pk < Formula
  desc "Project knowledge — structured intake, search, and recall"
  homepage "https://github.com/justEstif/pk"
  url "https://registry.npmjs.org/@justestif/pk/-/pk-0.1.14.tgz"
  sha256 "873ade5f600d4464b1adf6a815f55ccf4172fe05f55fea5e7416bd6d76b774c0"
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
