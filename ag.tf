resource "aws_api_gateway_rest_api" "api" {
 name = "api-gateway"
 description = "Proxy to handle requests to our API"
}

resource "aws_api_gateway_resource" "resource" {
  rest_api_id = "${aws_api_gateway_rest_api.api.id}"
  parent_id   = "${aws_api_gateway_rest_api.api.root_resource_id}"
  path_part   = "{proxy+}"
}
resource "aws_api_gateway_method" "method" {
  rest_api_id   = "${aws_api_gateway_rest_api.api.id}"
  resource_id   = "${aws_api_gateway_resource.resource.id}"
  http_method   = "ANY"
  authorization = "NONE"
  request_parameters = {
    "method.request.path.proxy" = true
  }
}
resource "aws_api_gateway_integration" "integration" {
  rest_api_id = "${aws_api_gateway_rest_api.api.id}"
  resource_id = "${aws_api_gateway_resource.resource.id}"
  http_method = "${aws_api_gateway_method.method.http_method}"
  integration_http_method = "ANY"
  type                    = "HTTP_PROXY"
  uri                     = "http://54.221.115.52:8080/{proxy}"
 
  request_parameters =  {
    "integration.request.path.proxy" = "method.request.path.proxy"
  }
}

https://example.com/#
access_token=eyJraWQiOiJhb3ZkRUVaNDk4TGhtM2dqWmNuY1dRTVp1YWdcL3p1bW5QYUkzXC9VNnpRNlk9IiwiYWxnIjoiUlMyNTYifQ.eyJzdWIiOiJjMWQ2YTI4Ni03OGI3LTQxYWEtODg4My0yNjY0M2M4NDEyMGIiLCJ0b2tlbl91c2UiOiJhY2Nlc3MiLCJzY29wZSI6InBob25lIG9wZW5pZCBlbWFpbCIsImF1dGhfdGltZSI6MTcxMDcxOTY1MiwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tXC91cy1lYXN0LTFfU3JrN3pTMlhDIiwiZXhwIjoxNzEwNzIzMjUyLCJpYXQiOjE3MTA3MTk2NTMsInZlcnNpb24iOjIsImp0aSI6ImY3ZWIzOWI3LTBlNDctNDY2OS05MmI0LTE0MWY1YjlmZDM2MCIsImNsaWVudF9pZCI6IjRoamFhYWtqY2RnNTlncnY0Zjh0NHY2djI5IiwidXNlcm5hbWUiOiJsZWFuZHJvIn0.rB5YRdpQk-57WFiPSTch_aTFTKHoKzSjnwLs6Skjf3rtbkZQZ31jcHCwyh3qWGrWAFyWNFrznmaMsxsLIG7VglDp9f78iiW_kClAtpoOWVMSr1O6QqNBRQEdATKSVkhdPIHj4W_Rh2Z1IQnTeWu-gLYR3XU6_yYtoQJB7HHNG7y50HdXNBZBYuadi7YAcA38uT-r89NhBmB99LX-bCz7t54gqq365NxPnp8O4X3FrKmjlR4syiw-jxbxAWZYyK4Hs0sMITgWHiFAfwTYNbItzzcCvSIN1QjzI8vhPEoghiyABcwCwYwWp8kqc4U26bq_D_9hLehoMB80ndCh1a1emA
&id_token=eyJraWQiOiJnWUcxZlI0QzYxbWoyNHdXWWJXejJUK05xNUxWVDJTWm9ZTEJEUVlGMWxRPSIsImFsZyI6IlJTMjU2In0.eyJhdF9oYXNoIjoiS0FKVXpFZjZqUExkOFo0dS1obXlsQSIsInN1YiI6ImMxZDZhMjg2LTc4YjctNDFhYS04ODgzLTI2NjQzYzg0MTIwYiIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJpc3MiOiJodHRwczpcL1wvY29nbml0by1pZHAudXMtZWFzdC0xLmFtYXpvbmF3cy5jb21cL3VzLWVhc3QtMV9Tcms3elMyWEMiLCJjb2duaXRvOnVzZXJuYW1lIjoibGVhbmRybyIsImF1ZCI6IjRoamFhYWtqY2RnNTlncnY0Zjh0NHY2djI5IiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE3MTA3MTk2NTIsImV4cCI6MTcxMDcyMzI1MiwiaWF0IjoxNzEwNzE5NjUzLCJqdGkiOiJhMmJmYzQzMC04ZWVkLTRlNzgtODFiNC1kMjk5MjhiMWQ2YzkiLCJlbWFpbCI6ImxlYW5kcm9jbXNhbnRvc0BnbWFpbC5jb20ifQ.LabflR8_qYupPTmuY17toxLkLyY-msb9A4ZRi-EDACuxljsfoU3xkLVgV4Z4Itk6f2BWNH01wNROOjnt7M3ey6lmhA_heA8pzfCKBUWd5WIPXdnR3W0QvS-d1joUFey-1SG6b2--tGxSTck2j9-Derhc1ekhqUOBpbIHENDB9dcIVvlUV-a_dLr06FASA8ZyeCGSB7GGFaKBUmg-1OXSO7oDIxC1VZdYOfUPByGgyI-4ipzXqk0uffXdH638K55H-WkvgFMxXYr_H8X5jg_uE6whc7ye4Dz77qXz9z57dVZFSuwRYjzaKhqzFNLfaqydQjnMOCsK5W-b7lNBpBmuYg
&token_type=Bearer
&expires_in=3600