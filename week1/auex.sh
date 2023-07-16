#!/bin/bash
apiPath="https://api.exchangerate-api.com/v4/latest/AUD"
fileName="index_au.html"

# Opens Firefox and opens fileName
firefox $fileName&


while :; do

  GBP=$((curl -s $apiPath  | jq '.rates.GBP') | sed 's/"//g')
  USD=$((curl -s $apiPath  | jq '.rates.USD') | sed 's/"//g')
  EUR=$((curl -s $apiPath  | jq '.rates.EUR') | sed 's/"//g')
  THB=$((curl -s $apiPath  | jq '.rates.THB') | sed 's/"//g')
  JPY=$((curl -s $apiPath  | jq '.rates.JPY') | sed 's/"//g')
  MYR=$((curl -s $apiPath  | jq '.rates.MYR') | sed 's/"//g')


cat > $fileName <<- _EOF_
<!DOCTYPE html>
<html>
<head>
<title>AUD Currency exchange rates</title>

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
<h1>AUD Currency exchange rates</h1>

 <table>
  <tr>
    <th>BASE CURRENCY</th>
    <th>COUNTER CURRENCY</th>
    <th>RATE</th>
  </tr>
  <tr>
    <td>AUD</td>
    <td>GBP</td>
    <td>$GBP</td>
  </tr>
  <tr>
    <td>AUD</td>
    <td>USD</td>
    <td>$USD</td>
  </tr>
    <tr>
    <td>AUD</td>
    <td>EUR</td>
    <td>$EUR</td>
  </tr>
    <tr>
    <td>AUD</td>
    <td>THB</td>
    <td>$THB</td>
  </tr>
    <tr>
    <td>AUD</td>
    <td>JPY</td>
    <td>$JPY</td>
  </tr>
    <tr>
    <td>AUD</td>
    <td>MYR</td>
    <td>$MYR</td>
  </tr>
</table> 
</body>

</html>
_EOF_
done
