class Lasso < Formula
  desc "Harness-agnostic observational memory and linting CLI for coding agents"
  homepage "https://github.com/justEstif/lasso"
  url "https://registry.npmjs.org/@justestif/lasso/-/lasso-0.1.4.tgz"
  sha256 "3dad532d7afdde6fe89f07173a15deec401f4ef742ddd0ee74412bea151b5d26"
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
