.class public Lcom/lge/bluetooth/LGBluetoothXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "LGBluetoothXmlHandler.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "LGBluetoothXmlHandler"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 185
    return-void
.end method

.method public endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "LGBluetoothXmlHandler"

    const-string v1, "endDocument!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "elet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 180
    return-void
.end method

.method public startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "LGBluetoothXmlHandler"

    const-string v1, "dvice configuraion start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "LGBluetoothXmlHandler"

    const-string v1, "startDocument!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "elet"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v0, "LGBluetoothXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startElement - elet = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, "OPP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 62
    const-string v0, "BT_SUPPORT_OPP_1.1"

    const-string v1, "BT_SUPPORT_OPP_1.1"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "LGBluetoothXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BT_SUPPORT_OPP_1.1 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "BT_SUPPORT_OPP_1.1"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v0, "BT_SUPPORT_OPP_1.2"

    const-string v1, "BT_SUPPORT_OPP_1.2"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "LGBluetoothXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BT_SUPPORT_OPP_1.2 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "BT_SUPPORT_OPP_1.2"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_66
    :goto_66
    return-void

    .line 68
    :cond_67
    const-string v0, "A2DP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 69
    const-string v0, "BT_SUPPORT_A2DP_SINK_BCM"

    const-string v1, "BT_SUPPORT_A2DP_SINK_BCM"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "BT_SUPPORT_A2DP_SINK_QCT"

    const-string v1, "BT_SUPPORT_A2DP_SINK_QCT"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "BT_SUPPORT_A2DP_SINK_COMMON"

    const-string v1, "BT_SUPPORT_A2DP_SINK_COMMON"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 75
    :cond_91
    const-string v0, "PBAP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 76
    const-string v0, "DISABLE_PBAP"

    const-string v1, "DISABLE_PBAP"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 78
    :cond_a5
    const-string v0, "MAP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 79
    const-string v0, "DISABLE_MAP"

    const-string v1, "DISABLE_MAP"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 81
    :cond_b9
    const-string v0, "SAP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 82
    const-string v0, "DISABLE_SAP"

    const-string v1, "DISABLE_SAP"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 86
    :cond_cd
    const-string v0, "GATT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 87
    const-string v0, "DISABLE_GATT"

    const-string v1, "DISABLE_GATT"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 89
    :cond_e1
    const-string v0, "HDP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 90
    const-string v0, "DISABLE_HDP"

    const-string v1, "DISABLE_HDP"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 94
    :cond_f6
    const-string v0, "AVRCP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 95
    const-string v0, "AVRCP_1.4"

    const-string v1, "AVRCP_1.4"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 99
    :cond_10b
    const-string v0, "HFP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 100
    const-string v0, "HFP_CLIENT"

    const-string v1, "HFP_CLIENT"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 104
    :cond_120
    const-string v0, "OLDHELP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 105
    const-string v0, "OLD_HELP"

    const-string v1, "OLD_HELP"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 109
    :cond_135
    const-string v0, "OPP_DIRECTORY_BLUETOOTH"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 110
    const-string v0, "OPP_DIRECTORY_BLUETOOTH"

    const-string v1, "OPP_DIRECTORY_BLUETOOTH"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 114
    :cond_14a
    const-string v0, "VIEW"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 115
    const-string v0, "SPLIT_VIEW"

    const-string v1, "SPLIT_VIEW"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 119
    :cond_15f
    const-string v0, "BT_COMMON_INVISIBLE_ADDR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 120
    const-string v0, "BT_COMMON_INVISIBLE_ADDR"

    const-string v1, "BT_COMMON_INVISIBLE_ADDR"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 124
    :cond_174
    const-string v0, "BLEAPP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 125
    const-string v0, "BLEAPP_DISABLE"

    const-string v1, "BLEAPP_DISABLE"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 129
    :cond_189
    const-string v0, "BT_COMMON_BTHELP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 130
    const-string v0, "BT_COMMON_BTHELP"

    const-string v1, "BT_COMMON_BTHELP"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 134
    :cond_19e
    const-string v0, "VFP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 135
    const-string v0, "VFP"

    const-string v1, "VFP"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 139
    :cond_1b3
    const-string v0, "BTUX"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c8

    .line 140
    const-string v0, "BT_COMMON_BTUX_4.1"

    const-string v1, "BT_COMMON_BTUX_4.1"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 144
    :cond_1c8
    const-string v0, "MTK_SAP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 145
    const-string v0, "MTK_SAP_DISABLE"

    const-string v1, "MTK_SAP_DISABLE"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 149
    :cond_1dd
    const-string v0, "BATTERY_STATUS"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f2

    .line 150
    const-string v0, "BATTERY_STATUS_DISPLAY"

    const-string v1, "BATTERY_STATUS_DISPLAY"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 154
    :cond_1f2
    const-string v0, "BLOCK_PANU"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_207

    .line 155
    const-string v0, "BLOCK_PANU"

    const-string v1, "BLOCK_PANU"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 159
    :cond_207
    const-string v0, "BT_SUPPORT_ANT_PLUS"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 160
    const-string v0, "BT_SUPPORT_ANT_PLUS"

    const-string v1, "BT_SUPPORT_ANT_PLUS"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 164
    :cond_21c
    const-string v0, "INBAND_RING"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_231

    .line 165
    const-string v0, "BT_SUPPORT_INBAND_RING_ENABLE"

    const-string v1, "BT_SUPPORT_INBAND_RING_ENABLE"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 169
    :cond_231
    const-string v0, "BT_COMMON_SCENARIO_ADVERTISING_SETTING_MENU"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 170
    const-string v0, "BT_COMMON_SCENARIO_ADVERTISING_SETTING_MENU"

    const-string v1, "BT_COMMON_SCENARIO_ADVERTISING_SETTING_MENU"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66
.end method
