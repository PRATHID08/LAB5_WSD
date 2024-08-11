<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <!-- Root template -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Crop Monitoring Report</title>
                <style>
                    table { width: 100%; border-collapse: collapse; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                </style>
            </head>
            <body>
                <h2>Crop Monitoring Report</h2>

                <h3>Fields</h3>
                <table>
                    <tr>
                        <th>Field ID</th>
                        <th>Name</th>
                        <th>Location</th>
                        <th>Size (hectares)</th>
                    </tr>
                    <xsl:for-each select="CropMonitoring/Field">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="Name"/></td>
                            <td><xsl:value-of select="Location"/></td>
                            <td><xsl:value-of select="Size"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h3>Crops</h3>
                <table>
                    <tr>
                        <th>Crop ID</th>
                        <th>Name</th>
                        <th>Field ID</th>
                        <th>Planting Date</th>
                    </tr>
                    <xsl:for-each select="CropMonitoring/Crop">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="Name"/></td>
                            <td><xsl:value-of select="FieldRef"/></td>
                            <td><xsl:value-of select="PlantingDate"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h3>Monitoring Events</h3>
                <table>
                    <tr>
                        <th>Event ID</th>
                        <th>Crop ID</th>
                        <th>Date</th>
                        <th>Status</th>
                        <th>Observation</th>
                    </tr>
                    <xsl:for-each select="CropMonitoring/MonitoringEvent">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="CropRef"/></td>
                            <td><xsl:value-of select="Date"/></td>
                            <td><xsl:value-of select="Status"/></td>
                            <td><xsl:value-of select="Observation"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
