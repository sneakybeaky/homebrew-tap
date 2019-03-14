class Terraform < Formula
    desc "Tool to build, change, and version infrastructure"
    homepage "https://www.terraform.io/"
    url "https://releases.hashicorp.com/terraform/0.11.12/terraform_0.11.12_darwin_amd64.zip"
    sha256 "316fa873b26463f3e015db11dba00eab1839338f930f1352dbab2d0bcd0828a5"
  
    bottle :unneeded
  
    def install
      bin.install "terraform"
    end
  
    test do
      system "#{bin}/terraform", "version"
    end
  end