$ErrorActionPreference = "Stop"
Set-StrictMode -Version 2.0
#$host.EnterNestedPrompt()

$ScriptDir = (Split-Path -Path $MyInvocation.InvocationName -Parent) + '\'

"---------------------------------------------"
" �O��̋󔒂̏���"
""
$str = "	   This is a test string!    	"
Write-Host "-" $str "-"
Write-Host "-" $str.Trim() "-"
Write-Host "-" $str.TrimStart() "-"
Write-Host "-" $str.TrimEnd() "-"

"---------------------------------------------"
" �啶���E�������ϊ�"
""
$str = " aa bb cc "
Write-Host $str.ToUpper()
$str = " AA BB CC "
Write-Host $str.ToLower()

"---------------------------------------------"
" ��r"
""
$str1 = " aa bb cc "
$str2 = " AA BB CC "

#�啶���E����������ʂ��Ȃ��Ŕ�r
Write-Host "$str1 -eq $str2 : $( $str1 -ieq $str2 )"

#�啶���E����������ʂ��ĂŔ�r
Write-Host "$str1 -ceq $str2 : $( $str1 -ceq $str2 )"

"---------------------------------------------"
" ���K�\�����Z�q"
""
$str1 = "aa bb cc"

$result = $str1 -match "(\s.+\s)"
Write-Host "result=$result matches=$($matches[1])"

"---------------------------------------------"
" ������v�̔���"
""
$str1 = "aa bb cc"

Write-Host ($str1.indexOf("bb") -ne -1)
Write-Host $str1.contains("bb")

"---------------------------------------------"
" �擪�E����"
""
$str = "����������"
Write-Host $str[0]
Write-Host $str[-1]

"---------------------------------------------"
" ����������"
""
$str = "���E�������悤�ȑ�Ȋw�҂ɂȂ낤�Ǝv�����҂����낤���B"
$str.SubString(3) #3�����ڂ��疖���܂�
$str.SubString(3, 5) #3�����ڂ���5������

"---------------------------------------------"
" ���s�R�[�h�̏���"
""
$str = "L1: aaaaaaaaa`r`nL2: This is a test string!`n`r`nL4: aaa"
Write-Host $str

$str = $str.Replace("`r", "").Replace("`n", "")
Write-Host $str

"---------------------------------------------"
" �s���Ƃɕ���"
""
$str = "L1: aaaaaaaaa`r`nL2: This is a test string!`n`r`nL4:"

$lines = $str -split "`n" | % { $_.Replace("`r", "") }
$lines | % { "{0} ... {1}" -f $_, $_.Length }