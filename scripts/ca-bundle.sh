#!/bin/bash


read -r -d '' PEM << EOM
-----BEGIN CERTIFICATE-----
MIIC3jCCAcagAwIBAgIBATANBgkqhkiG9w0BAQsFADAgMR4wHAYDVQQDDBUwLjAu
MC4wLWNhQDE1ODE0NjYyNTYwHhcNMjAwMjExMjMxMDU2WhcNMjEwMjEwMjMxMDU2
WjAgMR4wHAYDVQQDDBUwLjAuMC4wLWNhQDE1ODE0NjYyNTYwggEiMA0GCSqGSIb3
DQEBAQUAA4IBDwAwggEKAoIBAQDNLfHE1sig5h82MBvKlK+yhBEfdKdBMD9BrBcQ
zv16S8+jfuGyN0ThRlTj56P3b1QS5kUuMjtFIVLhF/64Wy0/n1JVTPsgHn69ObXo
FOgdHUU55aaFf/fyC5GtD+Nzmv8KGE3LrvU2HW7cJyWZY7YQIe5EixAGUIAZIzMR
/Uu3n7UtiwdcGDRaELS6U8cu1szxXUo8IbnoKjO+uk+oF/e0d/j2PK06wpu1aamG
nLCTl1LuSO6CQFyqNqRWIhVDm2JHTHoSY59j7gwBjtfyN6xUFQtRLil56tE4l0Y6
fzrd/v/HWSw4gJkb/T4JVNIT+wbjJjMtYuZPGYPwuZ3P0DBFAgMBAAGjIzAhMA4G
A1UdDwEB/wQEAwICpDAPBgNVHRMBAf8EBTADAQH/MA0GCSqGSIb3DQEBCwUAA4IB
AQAy4qFtOn4sgZVA3q4ulmSZG0YSnm2RU1eFvDW4FiJkY88zc/zRliR8AGwS8tdc
OngDYcIPKm4gdkv57YiBORlwc+i6tGifsx7HmrYCHRjJXCeVrs0GLKrQ8sdCRZcs
GHFoiqD6n9tZafer7MkNZk0cTLAxWq9sx2GQiDKw/8QINI37DWo4nMbdb2XoFDlj
9DfVIIQcBmzQiHOqgruhGkx0DauiWzPuv9DoepHkiz3uXDiLBlGsBOnos15ltOHh
po98D8uxu0rM/I+FrvakY8ff0FYSwuvSikz/2kRNe/o4FhRs/Y1Hu+EtD7USZ82H
d8+hROP2RWFEAdwFeT9DT6R9
-----END CERTIFICATE-----
EOM

echo "${PEM}" | openssl x509 -text -noout
echo "${PEM}" | tr -d '\n'
# echo "${PEM}" | base64 --wrap=0 | tr -d '\n'