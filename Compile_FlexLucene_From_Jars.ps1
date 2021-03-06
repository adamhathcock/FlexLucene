$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
Write-host "Current script exection directory: $dir"

$ikvmVersion = "7.3.4830.0"
$ikvmPath = "$dir\ikvm-$ikvmVersion\bin\ikvmc.exe"

$luceneVersion = "4.5.0"
$luceneRoot = "$dir\lucene-$luceneVersion"

$version = "-version:4.5.0"
$fileversion = "-fileversion:4.5.0"

& $ikvmPath "$luceneRoot\core\lucene-core-$luceneVersion.jar", "$luceneRoot\analysis\common\lucene-analyzers-common-$luceneVersion.jar", "$luceneRoot\analysis\phonetic\lib\commons-codec-1.7.jar", "$luceneRoot\analysis\phonetic\lucene-analyzers-phonetic-$luceneVersion.jar", "$luceneRoot\sandbox\lib\jakarta-regexp-1.4.jar", "$luceneRoot\spatial\lib\spatial4j-0.3.jar", "$luceneRoot\codecs\lucene-codecs-$luceneVersion.jar", "$luceneRoot\queries\lucene-queries-$luceneVersion.jar", "$luceneRoot\sandbox\lucene-sandbox-$luceneVersion.jar", "$luceneRoot\queryparser\lucene-queryparser-$luceneVersion.jar", "$luceneRoot\facet\lucene-facet-$luceneVersion.jar", "$luceneRoot\suggest\lucene-suggest-$luceneVersion.jar", "$luceneRoot\misc\lucene-misc-$luceneVersion.jar", "$luceneRoot\memory\lucene-memory-$luceneVersion.jar", "$luceneRoot\highlighter\lucene-highlighter-$luceneVersion.jar", "$luceneRoot\join\lucene-join-$luceneVersion.jar", "$luceneRoot\grouping\lucene-grouping-$luceneVersion.jar", "$luceneRoot\spatial\lucene-spatial-$luceneVersion.jar", "-target:library" ,"-platform:x64", "-out:$dir\Output\FlexLucene.dll", $fileversion, $version
