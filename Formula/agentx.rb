class Agentx < Formula
  desc "AI agent that builds production-ready websites from your terminal"
  homepage "https://github.com/SohailKhan0525/agentx-cli"
  url "https://registry.npmjs.org/@agent-qofeno/agentx-cli/-/agentx-cli-2.0.5.tgz"
  sha256 "4f1b05eb7eeb79b81a8e3a22dd302b67d217cbda7b4fae1d785a0c0aa7a865cd"
  license "MIT"
  depends_on "node"
  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  test do
    system "#{bin}/agentx", "--version"
  end
end
