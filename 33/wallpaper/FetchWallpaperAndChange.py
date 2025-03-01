# from retry import retry
import requests
# import time
import os
# url='https://t.mwm.moe/fj'
url = 'https://www.loliapi.com/acg/pc/'
# url = 'https://api.suyanw.cn/api/comic'

filePath = "/home/kyee/33/wallpaper/wallpapers/"
header={
    'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0'
}
# @retry(tries=100000,delay=3)
def changeWallpaper(filePath,pictureName):
    os.system('waypaper --wallpaper {}{}'.format(filePath,pictureName))
def getpictures(url,header,filePath):
    # while True:
    # get picture
    response = requests.get(url,headers=header)
    picture = response.content

    # get name 
    urlName = response.url
    pictureName = urlName.split("/")[-1]

    # write picture
    with open('{}{}'.format(filePath,pictureName),'wb+') as f:
        f.write(picture)

    # change wallpaper 
    changeWallpaper(filePath,pictureName)

    # sleep 60s
    # time.sleep(60)
getpictures(url,header,filePath)
