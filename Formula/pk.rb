class Pk < Formula
  desc "Project knowledge — structured intake, search, and recall"
  homepage "https://github.com/justEstif/pk"
  url "https://registry.npmjs.org/@justestif/pk/-/pk-0.7.0.tgz"
  sha256 "6167ffd140c4d869c7729e3681c49f4b73ae8a9b7159bdb29d279dc2d627bb93"
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
