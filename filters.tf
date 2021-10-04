resource "null_resource" "hello-filter" {
  provisioner "local-exec" {
    command = "./create-vocabulary-filter"
    environment = {
      FILTER   = "hello"
      WORDLIST = "hello hi hey ahoy"
      LANG     = "en-US"
      REGION   = var.region #add the region in your variables.tf
    }
  }
}
