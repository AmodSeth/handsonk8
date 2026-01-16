## Base Tempalte

# <block> <parameters>{
#     key1 = value1
#     key2 = value2
# }

resource "local_file" "Pets" {
    filename = "/Users/amodseth/terraform_test_files/pets.txt"
    content = "We don't love pets"
  
}

resource "local_sensitive_file" "games" {
  filename     = "/root/favorite-games"
  content  = "FIFA 21"
}
