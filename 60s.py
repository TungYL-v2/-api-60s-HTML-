import requests
print("正在下载60s请不要点击或关闭窗口")
r = requests.get('https://api.03c3.cn/api/zb?type=img',verify=False)
with open('1.jpg', 'wb') as f:
	f.write(r.content)
	# r = requests.get('https://api.03c3.cn/api/zb?type=img',verify=False)
# with open('2.jpg', 'wb') as f:
# 	f.write(r.content)

