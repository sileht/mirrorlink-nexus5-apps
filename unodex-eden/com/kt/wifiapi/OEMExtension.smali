.class public Lcom/kt/wifiapi/OEMExtension;
.super Ljava/lang/Object;
.source "OEMExtension.java"


# static fields
.field public static final DP_MODE_CITY:I = 0x1

.field public static final DP_MODE_GENERAL:I = 0x2

.field public static final DP_MODE_HOME:I = 0x3

.field public static final DP_MODE_OFF:I = 0x0

.field public static final EAP_AKA_NOTIFICATION:Ljava/lang/String; = "EAP_AKA_NOTIFICATION"

.field public static final EAP_NOTIFICATION:Ljava/lang/String; = "EAP_NOTIFICATION"

.field public static final ERROR_NOTIFICATION:Ljava/lang/String; = "ERROR_NOTIFICATION"

.field public static final ERROR_NOTIFICATION_AUTH_FAIL:I = -0x5

.field public static final ERROR_NOTIFICATION_IDPW_MISPATCH:I = -0x4

.field public static final ERROR_NOTIFICATION_INVALID_USIM:I = -0x1

.field public static final ERROR_NOTIFICATION_NO_RESPONSE:I = -0x6

.field public static final ERROR_NOTIFICATION_NO_USIM:I = -0x2

.field public static final ERROR_NOTIFICATION_PW_MISPATCH:I = -0x3

.field public static final FEATURE_KT_WIFIAPI_OEM_DISCONNECTION_PRIORITY:I = 0x2

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_AKA_NOTIFICATON:I = 0x10

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_NOTIFICATON:I = 0x8

.field public static final FEATURE_KT_WIFIAPI_OEM_ERROR_NOTIFICATON:I = 0x4

.field public static final FEATURE_KT_WIFIAPI_OEM_MANUAL_CONNECTION:I = 0x1

.field public static final FEATURE_KT_WIFIAPI_OEM_SCAN_RESULT_EXTENSION:I = 0x20

.field public static final MANUAL_CONN_ENABLE_QUERY:Ljava/lang/String; = "com.kt.wifiapi.OEMExtension.MANUAL_CONN_ENABLE_QUERY"

.field public static final NOTIFICATION:Ljava/lang/String; = "com.kt.wifiapi.OEMExtension.NOTIFICATION"

.field private static final TAG:Ljava/lang/String; = "WifiKTAPI"

.field private static mContext:Landroid/content/Context;

.field private static mGWSScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final mReceiver:Landroid/content/BroadcastReceiver;

.field private static mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;


# instance fields
.field private mFeatureSupport:I

.field private mManualConnection:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    .line 72
    new-instance v0, Lcom/kt/wifiapi/OEMExtension$1;

    invoke-direct {v0}, Lcom/kt/wifiapi/OEMExtension$1;-><init>()V

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    .line 37
    iput v0, p0, Lcom/kt/wifiapi/OEMExtension;->mFeatureSupport:I

    .line 69
    return-void
.end method

.method static synthetic access$0(Ljava/util/List;)V
    .registers 1

    .prologue
    .line 25
    sput-object p0, Lcom/kt/wifiapi/OEMExtension;->mGWSScanResults:Ljava/util/List;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kt/wifiapi/OEMExtension;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    if-nez v2, :cond_12

    .line 83
    new-instance v2, Lcom/kt/wifiapi/OEMExtension;

    invoke-direct {v2}, Lcom/kt/wifiapi/OEMExtension;-><init>()V

    sput-object v2, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    .line 84
    const-string v2, "WifiKTAPI"

    const-string v3, "[getInstance] mWifiLgeKTOEMExt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_12
    if-eqz p0, :cond_43

    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    if-eq p0, v2, :cond_43

    .line 88
    sput-object p0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    .line 90
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.lge.wifi.WIFI_GWS_SCAN_RESULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.wifi.WIFI_GWS_SCAN_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 97
    const-string v2, "WifiKTAPI"

    const-string v3, "[getInstance] mReceiver registerReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_43
    const-string v2, "WifiKTAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[getInstance] is called mContext : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWifiLgeKTOEMExt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    return-object v2
.end method


# virtual methods
.method public getDisconnectionPriority()I
    .registers 6

    .prologue
    .line 171
    const/16 v1, -0x55

    .line 172
    .local v1, "signalStrength":I
    const/4 v0, 0x0

    .line 174
    .local v0, "dpMode":I
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_15

    .line 175
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_rssi_polling_threshold_db"

    const/16 v4, -0x55

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 177
    :cond_15
    sparse-switch v1, :sswitch_data_20

    .line 194
    :goto_18
    return v0

    .line 179
    :sswitch_19
    const/4 v0, 0x1

    .line 180
    goto :goto_18

    .line 183
    :sswitch_1b
    const/4 v0, 0x2

    .line 184
    goto :goto_18

    .line 187
    :sswitch_1d
    const/4 v0, 0x3

    .line 188
    goto :goto_18

    .line 177
    nop

    :sswitch_data_20
    .sparse-switch
        -0x5a -> :sswitch_1d
        -0x55 -> :sswitch_1b
        -0x4b -> :sswitch_19
    .end sparse-switch
.end method

.method public getFeature()I
    .registers 2

    .prologue
    .line 108
    const/16 v0, 0x3f

    iput v0, p0, Lcom/kt/wifiapi/OEMExtension;->mFeatureSupport:I

    .line 115
    iget v0, p0, Lcom/kt/wifiapi/OEMExtension;->mFeatureSupport:I

    return v0
.end method

.method public getGWSScanResultsEx()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mGWSScanResults:Ljava/util/List;

    return-object v0
.end method

.method public getManualConnection()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    return v0
.end method

.method public setDisconnectionPriority(I)Z
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 140
    const/16 v0, -0x64

    .line 142
    .local v0, "signalStrength":I
    if-ltz p1, :cond_7

    const/4 v1, 0x3

    if-ge v1, p1, :cond_9

    .line 143
    :cond_7
    const/4 v1, 0x0

    .line 166
    :goto_8
    return v1

    .line 146
    :cond_9
    packed-switch p1, :pswitch_data_26

    .line 163
    :goto_c
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1b

    .line 164
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_rssi_polling_threshold_db"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    :cond_1b
    const/4 v1, 0x1

    goto :goto_8

    .line 148
    :pswitch_1d
    const/16 v0, -0x4b

    .line 149
    goto :goto_c

    .line 152
    :pswitch_20
    const/16 v0, -0x55

    .line 153
    goto :goto_c

    .line 156
    :pswitch_23
    const/16 v0, -0x5a

    .line 157
    goto :goto_c

    .line 146
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method public setManualConnection(Z)Z
    .registers 7
    .param p1, "value"    # Z

    .prologue
    const/4 v4, 0x1

    .line 120
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3a

    .line 121
    iput-boolean p1, p0, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    .line 122
    const-string v1, "WifiKTAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[setManualConnection] mManualConnection : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wifi.WIFI_MANUAL_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    const-string v1, "manual_connection_cmd"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const-string v1, "manual_connection_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 130
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3a
    return v4
.end method
