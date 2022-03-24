*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Mayan}    http://localhost/#/home/
${New document}    //*[@id="accordion-body-1"]/div/ul/li[7]
${Click Next}    //*[@id="viewport"]/div[3]/form/div[2]/button[3]
${Select Box1.0}    //*[@id="viewport"]/div[3]/form/div[1]/span/span[1]/span/span[2]
${Select Box2.0}    //*[@id="viewport"]/div[3]/form/div[1]/span/span[1]/span/ul/li/input
${Click Upload}    //*[@id="html5upload"]/div[5]/button
${File PDF}    E:\Robot test card8\รูปเล่มภาวะผู้นำPDFDEMO.pdf
${File JPG}    E:\Robot test card8\czb6vk.jpg
*** Test Cases ***
Upload เอกสารโครงการพิเศษ
  Open Browser    ${Mayan}    chrome
  Input Text     id_username    admin
  Input Text     id_password    8cTLsREefx
  Click Button    submit
  Click Element    heading-documents
  Wait Until Element Is Visible   ${New document}      10
  Click Element    ${New document}
  Wait Until Element Is Visible   ${Select Box1.0}      10
  Click Element    ${Select Box1.0}
  Wait Until Element Is Visible   ${Select Box1.0}      10
  Press Keys    ${Select Box1.0}    DROPDOWN
  Press Keys    ${Select Box1.0}    ENTER
  Click Element    ${Click Next}
  Press Keys    ${Select Box1.0}    สาขาภูมิศาสตร์สารสนเทศ
  Click Element    ${Click Next}
  Press Keys    ${Select Box2.0}    แผน ก แบบ ก (1)
  Click Element    ${Click Next}
  Wait Until Element Is Visible   ${Click Upload}      10
  Choose File	${Click Upload}	${File JPG}
