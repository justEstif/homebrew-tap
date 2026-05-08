class Pk < Formula
  desc "Project knowledge — structured intake, search, and recall"
  homepage "https://github.com/justEstif/pk"
  url "https://registry.npmjs.org/@justestif/pk/-/pk-0.3.0.tgz"
  sha256 "45d82f13b17caecbe976ca4e66e204dfdadd439347dfc07d42ed2c78fa3d7a58"
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
