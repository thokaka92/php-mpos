<article class="module width_quarter">
  <header><h3>Balance Summary</h3></header>
  <table width="25%" class="tablesorter" cellspacing="0">
  <tr>
    <td align="left">Wallet Balance</td>
    <td align="left">{$BALANCE|number_format:"8"}</td>
  </tr>
  <tr>
    <td align="left">Locked for users</td>
    <td align="left">{$LOCKED|number_format:"8"}</td>
  </tr>
  <tr>
    <td align="left">Unconfirmed</td>
    <td align="left">{$UNCONFIRMED|number_format:"8"}</td>
  </tr>
  <tr>
    <td align="left">Liquid Assets</td>
    <td align="left">{($BALANCE - $LOCKED)|number_format:"8"}</td>
  </tr>
{if $NEWMINT >= 0}
  <tr>
    <td align="left">PoS New Mint</td>
    <td align="left">{$NEWMINT|number_format:"8"}</td>
  </tr>
{/if}
</table>
</article>

<article class="module width_3_quarter">
  <header><h3>Wallet Information</h3></header>
  <table class="tablesorter" cellspacing="0">
    <thead>
      <th align="center">Version</th>
      <th align="center">Protocol Version</th>
      <th align="center">Wallet Version</th>
      <th align="center">Connections</th>
      <th align="center">Errors</th>
    </thead>
    <tbody>
      <tr>
        <td align="center">{$COININFO.version|default:""}</td>
        <td align="center">{$COININFO.protocolversion|default:""}</td>
        <td align="center">{$COININFO.walletversion|default:""}</td>
        <td align="center">{$COININFO.connections|default:""}</td>
        <td align="center"><font color="{if $COININFO.errors}red{else}green{/if}">{$COININFO.errors|default:"OK"}</font></td>
      </tr>
    </tbody>
  </table>
  
</article>

<article class="width_half">
  <!--
    needed for showing below balance summary, because those modules are pretty dumb and auto-align
  -->
  <br /><br /><br /><br /><br /><br />
</article>

<article class="module width_quarter">
  <header><h3>Addresses assigned to Default Wallet</h3></header>
  <table class="tablesorter" cellspacing="0">
    <thead>
      <th align="center">#</th>
      <th align="left">Address</th>
    </thead>
    <tbody>
{assign var=rank value=1}
{section address $ADDRESSES}
      <tr>
        <td align="center">{$rank++}</td>
        <td align="left" style="padding-right: 25px;">{$ADDRESSES[address]}</td>
      </tr>
{/section}
    </tbody>
  </table>
</article>