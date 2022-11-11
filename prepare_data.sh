mkdir data_zalo

# curl 'https://xj47y-my.sharepoint.com/personal/mrlasdt_xj47y_onmicrosoft_com/_layouts/15/download.aspx?SourceUrl=%2Fpersonal%2Fmrlasdt%5Fxj47y%5Fonmicrosoft%5Fcom%2FDocuments%2FWork%2FSamsung%2FZALO%5FAI%2Fpublic%5Fzalo%5Fimages%2Ezip' \
#   -H 'authority: xj47y-my.sharepoint.com' \
#   -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
#   -H 'accept-language: en-US,en;q=0.9,vi;q=0.8' \
#   -H 'cookie: MicrosoftApplicationsTelemetryDeviceId=b15cf787-ce75-5bee-88d2-983f399d29a6; MicrosoftApplicationsTelemetryFirstLaunchTime=1663751606474; rtFa=9O/C0Jkubzp5hW+m5Yp9kQhSnbabUPsPw5qP5tmv8T4mNUVDOTBBNTMtM0I5Ni00NDFGLUJCOUUtOTZFQTM4QkY2QjYwIzEzMzEwNDQxMjMyOTc2NDE3NCM1ODU5NkZBMC0yMEEwLTEwMDAtQ0JCQi01MTk4N0FCQUZFNTAjTVJMQVNEVCU0MFhKNDdZLk9OTUlDUk9TT0ZULkNPTZNZ/nBDFSdjGy3MpDJL4y8dcuH17HreuoxD5QbXO+cwS/f6Chpaupz0Y+QEi/ANjrfPuPdr8Lqg9aICue3mwLy6uQ+fw/tR2QEMwAcUCpQdIWK0uvP4jq14F14oui12Y8hRu4wbvejdZGJ5gMDW8zUiEbB4p52B8CAz2I/xuE3ta41d0Rts5/LL++ZmulzN2Z7vWliN2wc6/vrxE73FojZ8cSbedQxBFnmKm/xC9rcGvzNhpe/akBQbp0JK9xUjsJeU2C0Cr33YBYMYKtbiktiPJ+T6b0R3H9bUQQjjo5JmCy5m44HTTLZkIpLdvN89CAf57bvO1miF6PdBRk3VxKqdAAAA; SIMI=eyJzdCI6MH0=; ExcelWacDataCenter=PSG3; WordWacDataCenter=PSG4; WacDataCenter=PSG4; FedAuth=77u/PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48U1A+VjEyLDBoLmZ8bWVtYmVyc2hpcHwxMDAzMjAwMWU1NmY3ZThmQGxpdmUuY29tLDAjLmZ8bWVtYmVyc2hpcHxtcmxhc2R0QHhqNDd5Lm9ubWljcm9zb2Z0LmNvbSwxMzMwODIyNTE5OTAwMDAwMDAsMTMyOTM2ODk0MjAwMDAwMDAwLDEzMzEyOTk4MjE4OTQ3MzUxMiwyMjIuMjUyLjI3LjE2Nyw2Nyw1ZWM5MGE1My0zYjk2LTQ0MWYtYmI5ZS05NmVhMzhiZjZiNjAsLDRlNWZjYjNhLWM2MjAtNGJiMi1iMDNjLWVkYjYyYWQ1ZTdkNSw1ODU5NmZhMC0yMGEwLTEwMDAtY2JiYi01MTk4N2FiYWZlNTAsZTM0Mzc3YTAtZDBmMC0xMDAwLWNlNzItOTMwZmFmM2JkNGI1LCwwLDEzMzEyNjUyNjE4OTMxNzIzOSwxMzMxMjgyNTQxODkzMTcyMzksLCxleUo0YlhOZlkyTWlPaUpiWENKRFVERmNJbDBpTENKNGJYTmZjM050SWpvaU1TSXNJbUZqY25NaU9pSmJYQ0oxY200NmRYTmxjanB5WldkcGMzUmxjbk5sWTNWeWFYUjVhVzVtYjF3aVhTSXNJbkJ5WldabGNuSmxaRjkxYzJWeWJtRnRaU0k2SW0xeWJHRnpaSFJBZUdvME4za3ViMjV0YVdOeWIzTnZablF1WTI5dElpd2lkWFJwSWpvaU16bFBZWHBXU2t0Wk1HVlhkRFJXYjNCTk9VeEJRU0o5LDEzMzEwNDQ0ODMyOTYwNzkxMSwxMzMxMDQ0MTIzMjAwMDAwMDAsZDAxZWVmYTctNDlkNS00MDlhLWEyNTgtODY5OTRlMWU4MjAyLCwsLCwsMCwsWTlucHJDY3VQWHcyaHpwdWtFQ0xQS0RtRGdRNU5pNzFUVzNiSGZ6S1EyUWdLN1ZTZHFxSUNoNDlCWXRZbzNTWmhVdEY5UFFLZjFIeEtkaXZXWEgrTXk0NTdLNVRKSlJveE42Zk1Tbk5lUy9GekVPZHJSUmdpU0FMV3JFZHRYaC9TT0d3NVhwRlU1V1ZHRzNDVWNCa1JKYzhxNHAyeVgzZnhCQkdxcFNmd1I0b2RrUGhmTEM5dXlUaUVzdnE5Um1pMThSSXNPRG5MTXYyWGVucjNVM2VnZWtvb2pTeTNLNGRueGN4aUJtM0NiSktlVnpyK3NBV2oxeUlMWWFMMlZSaXI4Y2o1dDZyYUxVVEx3OS9TVHFTdHdzZjRmOUFEcDZZTnpyTi9ZVkZDR3RjU3B3WWI1N0RsSXBVOFRzU0dWTDFZaXdyNHBlb0hjVm9ReHYrWHRIL1h3PT08L1NQPg==; cucg=1' \
#   -H 'referer: https://xj47y-my.sharepoint.com/personal/mrlasdt_xj47y_onmicrosoft_com/_layouts/15/onedrive.aspx?login_hint=mrlasdt%40xj47y%2Eonmicrosoft%2Ecom&id=%2Fpersonal%2Fmrlasdt%5Fxj47y%5Fonmicrosoft%5Fcom%2FDocuments%2FWork%2FSamsung%2FZALO%5FAI%2Fpublic%5Fzalo%5Fimages%2Ezip&parent=%2Fpersonal%2Fmrlasdt%5Fxj47y%5Fonmicrosoft%5Fcom%2FDocuments%2FWork%2FSamsung%2FZALO%5FAI' \
#   -H 'sec-ch-ua: "Google Chrome";v="107", "Chromium";v="107", "Not=A?Brand";v="24"' \
#   -H 'sec-ch-ua-mobile: ?0' \
#   -H 'sec-ch-ua-platform: "Linux"' \
#   -H 'sec-fetch-dest: iframe' \
#   -H 'sec-fetch-mode: navigate' \
#   -H 'sec-fetch-site: same-origin' \
#   -H 'service-worker-navigation-preload: true' \
#   -H 'upgrade-insecure-requests: 1' \
#   -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36' \
#   --compressed --output data_zalo/public.zip

  curl 'https://xj47y-my.sharepoint.com/personal/mrlasdt_xj47y_onmicrosoft_com/_layouts/15/download.aspx?SourceUrl=%2Fpersonal%2Fmrlasdt%5Fxj47y%5Fonmicrosoft%5Fcom%2FDocuments%2FWork%2FSamsung%2FZALO%5FAI%2Ftrain%5Fzalo%5Fimages%2Ezip' \
  -H 'authority: xj47y-my.sharepoint.com' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'accept-language: en-US,en;q=0.9,vi;q=0.8' \
  -H 'cookie: MicrosoftApplicationsTelemetryDeviceId=b15cf787-ce75-5bee-88d2-983f399d29a6; MicrosoftApplicationsTelemetryFirstLaunchTime=1663751606474; rtFa=9O/C0Jkubzp5hW+m5Yp9kQhSnbabUPsPw5qP5tmv8T4mNUVDOTBBNTMtM0I5Ni00NDFGLUJCOUUtOTZFQTM4QkY2QjYwIzEzMzEwNDQxMjMyOTc2NDE3NCM1ODU5NkZBMC0yMEEwLTEwMDAtQ0JCQi01MTk4N0FCQUZFNTAjTVJMQVNEVCU0MFhKNDdZLk9OTUlDUk9TT0ZULkNPTZNZ/nBDFSdjGy3MpDJL4y8dcuH17HreuoxD5QbXO+cwS/f6Chpaupz0Y+QEi/ANjrfPuPdr8Lqg9aICue3mwLy6uQ+fw/tR2QEMwAcUCpQdIWK0uvP4jq14F14oui12Y8hRu4wbvejdZGJ5gMDW8zUiEbB4p52B8CAz2I/xuE3ta41d0Rts5/LL++ZmulzN2Z7vWliN2wc6/vrxE73FojZ8cSbedQxBFnmKm/xC9rcGvzNhpe/akBQbp0JK9xUjsJeU2C0Cr33YBYMYKtbiktiPJ+T6b0R3H9bUQQjjo5JmCy5m44HTTLZkIpLdvN89CAf57bvO1miF6PdBRk3VxKqdAAAA; SIMI=eyJzdCI6MH0=; ExcelWacDataCenter=PSG3; WordWacDataCenter=PSG4; WacDataCenter=PSG4; FedAuth=77u/PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48U1A+VjEyLDBoLmZ8bWVtYmVyc2hpcHwxMDAzMjAwMWU1NmY3ZThmQGxpdmUuY29tLDAjLmZ8bWVtYmVyc2hpcHxtcmxhc2R0QHhqNDd5Lm9ubWljcm9zb2Z0LmNvbSwxMzMwODIyNTE5OTAwMDAwMDAsMTMyOTM2ODk0MjAwMDAwMDAwLDEzMzEyOTk4MjE4OTQ3MzUxMiwyMjIuMjUyLjI3LjE2Nyw2Nyw1ZWM5MGE1My0zYjk2LTQ0MWYtYmI5ZS05NmVhMzhiZjZiNjAsLDRlNWZjYjNhLWM2MjAtNGJiMi1iMDNjLWVkYjYyYWQ1ZTdkNSw1ODU5NmZhMC0yMGEwLTEwMDAtY2JiYi01MTk4N2FiYWZlNTAsZTM0Mzc3YTAtZDBmMC0xMDAwLWNlNzItOTMwZmFmM2JkNGI1LCwwLDEzMzEyNjUyNjE4OTMxNzIzOSwxMzMxMjgyNTQxODkzMTcyMzksLCxleUo0YlhOZlkyTWlPaUpiWENKRFVERmNJbDBpTENKNGJYTmZjM050SWpvaU1TSXNJbUZqY25NaU9pSmJYQ0oxY200NmRYTmxjanB5WldkcGMzUmxjbk5sWTNWeWFYUjVhVzVtYjF3aVhTSXNJbkJ5WldabGNuSmxaRjkxYzJWeWJtRnRaU0k2SW0xeWJHRnpaSFJBZUdvME4za3ViMjV0YVdOeWIzTnZablF1WTI5dElpd2lkWFJwSWpvaU16bFBZWHBXU2t0Wk1HVlhkRFJXYjNCTk9VeEJRU0o5LDEzMzEwNDQ0ODMyOTYwNzkxMSwxMzMxMDQ0MTIzMjAwMDAwMDAsZDAxZWVmYTctNDlkNS00MDlhLWEyNTgtODY5OTRlMWU4MjAyLCwsLCwsMCwsWTlucHJDY3VQWHcyaHpwdWtFQ0xQS0RtRGdRNU5pNzFUVzNiSGZ6S1EyUWdLN1ZTZHFxSUNoNDlCWXRZbzNTWmhVdEY5UFFLZjFIeEtkaXZXWEgrTXk0NTdLNVRKSlJveE42Zk1Tbk5lUy9GekVPZHJSUmdpU0FMV3JFZHRYaC9TT0d3NVhwRlU1V1ZHRzNDVWNCa1JKYzhxNHAyeVgzZnhCQkdxcFNmd1I0b2RrUGhmTEM5dXlUaUVzdnE5Um1pMThSSXNPRG5MTXYyWGVucjNVM2VnZWtvb2pTeTNLNGRueGN4aUJtM0NiSktlVnpyK3NBV2oxeUlMWWFMMlZSaXI4Y2o1dDZyYUxVVEx3OS9TVHFTdHdzZjRmOUFEcDZZTnpyTi9ZVkZDR3RjU3B3WWI1N0RsSXBVOFRzU0dWTDFZaXdyNHBlb0hjVm9ReHYrWHRIL1h3PT08L1NQPg==; cucg=1' \
  -H 'referer: https://xj47y-my.sharepoint.com/personal/mrlasdt_xj47y_onmicrosoft_com/_layouts/15/onedrive.aspx?login_hint=mrlasdt%40xj47y%2Eonmicrosoft%2Ecom&id=%2Fpersonal%2Fmrlasdt%5Fxj47y%5Fonmicrosoft%5Fcom%2FDocuments%2FWork%2FSamsung%2FZALO%5FAI%2Ftrain%5Fzalo%5Fimages%2Ezip&parent=%2Fpersonal%2Fmrlasdt%5Fxj47y%5Fonmicrosoft%5Fcom%2FDocuments%2FWork%2FSamsung%2FZALO%5FAI' \
  -H 'sec-ch-ua: "Google Chrome";v="107", "Chromium";v="107", "Not=A?Brand";v="24"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'sec-fetch-dest: iframe' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-site: same-origin' \
  -H 'service-worker-navigation-preload: true' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36' \
  --compressed --output data_zalo/train.zip

  unzip data_zalo/train.zip -d data_zalo

  # unzip data_zalo/public.zip -d data_zalo

  python externals/prepare_lists.py --data_path /root/CASIA-SURF_CeFA/data_zalo/train/images
