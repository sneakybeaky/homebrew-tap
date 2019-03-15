class KubernetesHelmAT21213 < Formula
  desc "The Kubernetes package manager"
  homepage "https://helm.sh/"
  url "https://storage.googleapis.com/kubernetes-helm/helm-v2.12.3-darwin-amd64.tar.gz"
  sha256 "564a087915e07333d2335face555eaac63accd669fb63672ae1b66a73144ac50"

  bottle :unneeded

  def install
    bin.install "helm"
    bin.install "tiller"
  end

  test do
    system "#{bin}/helm", "create", "foo"
    assert File.directory? "#{testpath}/foo/charts"

    version_output = shell_output("#{bin}/helm version --client 2>&1")
    assert_match "GitTreeState:\"clean\"", version_output
    assert_match stable.instance_variable_get(:@resource).instance_variable_get(:@specs)[:revision], version_output if build.stable?
  end
end