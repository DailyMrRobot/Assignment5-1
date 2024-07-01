<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 5
   Case Problem 4

   Cairn Camping Store XSLT Style Sheet
   Author: Ronnie Johnson
   Date:   06/30/24

   Filename:         camping.xsl
   Supporting Files: 
-->

<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3/org/1999/XSL/Transform">

</xsl:stylesheet>


<xsl:template match="/">
    <html>
        <head>
            <title> Cairn Camping Store Report</title>
            <link rel="stylesheet" type="text"/>
        </head>
        <body>
            <h1>Cairn Camping Store Report</h1>
            <xsl:apply-templates select="customer/customers">
                <xsl:sort select="name" order="ascending" />
            </xsl:apply-templates>
        </body>
    </html>
</xsl:template>

<xsl:template match="customer">
        <h2>Customer ID: <xsl:value-of select="@cid" /></h2>
        <p>Name: <xsl:value-of select="name"/></p>
        <p>Address: <xsl:value-of <select="concat(street,',',city,',',state,'',zip)"></p>
        <xsl:apply-templates select="orders/order">
            <xsl:sort select="@oid" order="descending" />
</xsl:template>



<xsl:template match="order">
        <h3>Order ID: <xsl:value-of select="@oid" /></h3>
        <p>Order Date: <xsl:value-of select="date"/></p>
        <table border="1">
            <tr>
                <th>Item ID</th>
                <th>Description</th>
                <th>Quantity</th>
            </tr>
            <xsl:apply-templates select="item">
                <xsl:sort select="qty" order="descending" data-type="number" />
                <xsl:sort select="@iid" order="ascending" />
        </xsl:apply-templates>
     </table>
</xsl:template>

