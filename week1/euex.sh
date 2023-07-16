#!/bin/bash
apiPath="https://api.exchangerate-api.com/v4/latest/EUR"
fileName="index.html"
Browsers="firefox"

# if $Browsers
# then
firefox $fileName&
# fi

while :; do
#   curl -s https://api.exchangerate-api.com/v4/latest/EUR  | jq '.'
#   curl -s https://api.exchangerate-api.com/v4/latest/EUR | jq '.base'
#   curl -s $apiPath  | jq '.rates.GBP'
  GBP=$((curl -s $apiPath  | jq '.rates.GBP') | sed 's/"//g')
  USD=$((curl -s $apiPath  | jq '.rates.USD') | sed 's/"//g')
  AUD=$((curl -s $apiPath  | jq '.rates.AUD') | sed 's/"//g')
  THB=$((curl -s $apiPath  | jq '.rates.THB') | sed 's/"//g')
  JPY=$((curl -s $apiPath  | jq '.rates.JPY') | sed 's/"//g')
  MYR=$((curl -s $apiPath  | jq '.rates.MYR') | sed 's/"//g')


cat > $fileName <<- _EOF_
<!DOCTYPE html>
<html>
<head>
<title>EUR Currency exchange rates</title>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

</head>

<body>
<h1>EUR Currency exchange rates</h1>

<!--vvv THIS SECTION DISABLED vvv-->
<!-- <p>EUR/GBP = $GBP</p>
<p>EUR/USD = $USD</p>
<p>EUR/AUD = $AUD</p>
<p>EUR/THB = $THB</p>
<p>EUR/JPY = $JPY</p>
<p>EUR/MYR = $MYR</p>
 -->
<!-- ^^^THIS SECTION DISABLED^^^ -->

 <table>
  <tr>
    <th>BASE CURRENCY</th>
    <th>COUNTER CURRENCY</th>
    <th>RATE</th>
  </tr>
  <tr>
    <td>EUR</td>
    <td>GBP</td>
    <td>$GBP</td>
  </tr>
  <tr>
    <td>EUR</td>
    <td>USD</td>
    <td>$USD</td>
  </tr>
    <tr>
    <td>EUR</td>
    <td>AUD</td>
    <td>$AUD</td>
  </tr>
    <tr>
    <td>EUR</td>
    <td>THB</td>
    <td>$THB</td>
  </tr>
    <tr>
    <td>EUR</td>
    <td>JPY</td>
    <td>$JPY</td>
  </tr>
    <tr>
    <td>EUR</td>
    <td>MYR</td>
    <td>$MYR</td>
  </tr>
</table> 
</body>

</html>
_EOF_
done
