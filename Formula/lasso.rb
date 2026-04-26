class Lasso < Formula
  desc "Harness-agnostic observational memory and linting CLI for coding agents"
  homepage "https://github.com/justEstif/lasso"
  url "https://registry.npmjs.org/@justestif/lasso/-/lasso-0.1.6.tgz"
  sha256 "b1b23ec08109a03dca8f13dc789d4e735d45184a903e7eac47ca09aeef918e40"
  license "MIT"

  depends_on "oven-sh/bun/bun"

  def install
    libexec.install Dir["*"]
    cd libexec do
      system "bun", "install", "--production"
    end
    bin.install_symlink libexec/"index.ts" => "lasso"
  end

  test do
    assert_match "Usage: lasso", shell_output("#{bin}/lasso --help")
  end
end
