
#main.tf
region = "us-east-1"
access = "ASIARF72TDE3UY2WS55N"
secret = "gyBmIBgNYMqK6dQxG83GvAPedwvIBIewhT0SQ3EF"
token  = "FwoGZXIvYXdzEHgaDJ9V1xdrDil2VfAf8yK4Af96dobFwCNY0HOmY+OXrLQ70A1PgW7eNvsBEITVMFVyTtiow5ARRUdNfFRV6V+Vsk4SQs+UaqKMpGQWJtA/Bnpn3jqmno5Pv4EdcnCXHB94DoJMqioi+rE0F5Z5tUwf6vtInupbwQCc2pGzZvDcIPtnlluH5QCtQxoc8FqOZK9YGNKoLXotbmth4/lS/bO/02UNz+7NNTglTB4JOpWLfv/5Ukp6lXzBhFDXiFk3uUAZ9tkxR/c4CRco3JWCkwYyLSAsyqVP91/vDTTIlqkgS3n/Q7f3TCehJomT6DTFANnfSETyU/7XxbDNqzIf0w=="

#instances.tf

ami  = "ami-03ededff12e34e59e"
type = "t2.micro"

#sg.tf

egress_ip_ssh_sg  = ["0.0.0.0/0"]
ingress_ip_ssh_sg = ["186.53.168.58/32"]

#vpc.tf

vpc_ip         = "172.16.0.0/16"
subnet_ip      = "172.16.1.0/24"
zona           = "us-east-1a"
route_table_ip = "0.0.0.0/0"