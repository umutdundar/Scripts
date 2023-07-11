@title Google Image Downloader

@rem echo off
@rem script  --> get-google-image.bat input.txt
@rem command --> googleimagesdownload -k "what_you_look_for" -l 250 -s ">4MP" -cd path-to-chromedriver/chromedriver.exe
@rem size = 2,4,6,8,10,12,15,20,40,70

set limit=100
set size=2

mkdir %size%MP
cd %size%MP

for /f "tokens=*" %%i in (%1) do (
	@title  "%%i"
	googleimagesdownload -k "%%i" -l %limit% -s ">%size%MP" -cd path-to-chromedriver\chromedriver.exe
	)
