*** Settings ***
Documentation     	robot framework QA
Library           	Selenium2Library
Library				RequestsLibrary
Library				String
Library				OperatingSystem
Library				Dialogs

*** Variables ***
# Pengaturan browser dan kecepatan selenium
${BROWSER}        			  ff
${OPEN}						        ${EMPTY}
${DELAY}          			  1
# Pengaturan URL
${SERVER}         			  https://shipper.id/bos/auth/login

*** Keywords ***
# Pengaturan browser
Buka browser
	# membuka browser pertama kali yang diisi dengan newtab (${EMPTY})
    Open Browser    					    ${OPEN}			${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    				${DELAY}
    Sleep								          1s
#============================================================================================================================================================================
Tutup browser
	Close Browser

# Pengaturan daftar
Menuju daftar
	# pergi ke halaman login dan memerika setiap elemen  di halaman tsb
    Go To    						        	${LOGIN_URL}
    Element daftar
#=============================================================================================================================================================================
Element daftar
	# elemen-elemen yang wajib ada di halaman login
    Click Element                          id=btn-tabdaftar
    Input Text                             id=firstname            'ferawati'
    Input Text                             id=lastname             'pratiwi'
    Input Text                             id=email                'ferawati.10109266@gmail.com'
    Input Text                             id=handphone            '081291345346'
    Input Password                         id=passreg              '123456'
    Input Password                         id=conpassreg           '123456'
    Input Text                             id=address              'Tangerang'
    Click Element                          id=city
    Click Element                          xpath=//*[text()='Tangerang, Kota, Banten']
    Click Element                          id=suburb
    Click Element                          xpath=//*[text()='Jatiuwung']
    Click Element                          id=area
    Click Element                          xpath=//*[text()='Alam Jaya']
    Element Attribute Value Should Be      id=zipcode                '15133'
    Click Button                           id=btn-daftar
