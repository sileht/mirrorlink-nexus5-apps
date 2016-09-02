.class public Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomNetworkSettingsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/SetcomNetworkSettingsHandler$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetcomNetworkSettingHandler"


# instance fields
.field private isSupportNFC:Z

.field public mContext:Landroid/content/Context;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field final networksSettings:[Ljava/lang/String;

.field final networksSettingsSecure:[Ljava/lang/String;

.field private final obj:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    .line 45
    const-string/jumbo v1, "wifi_sleep_policy"

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "airplane_mode_on"

    aput-object v1, v0, v3

    .line 44
    iput-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->networksSettings:[Ljava/lang/String;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "bluetooth_on"

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "wifi_on"

    aput-object v1, v0, v3

    .line 51
    const-string/jumbo v1, "wifi_networks_available_notification_on"

    aput-object v1, v0, v4

    .line 48
    iput-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->networksSettingsSecure:[Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->obj:Ljava/lang/Object;

    .line 64
    iput-boolean v2, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->isSupportNFC:Z

    .line 420
    new-instance v0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler$1;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler$1;-><init>(Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;)V

    iput-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    return-void
.end method

.method private getDefaultBooleanValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "Name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "con":Landroid/content/Context;
    const/4 v3, 0x0

    .line 357
    .local v3, "id":I
    :try_start_3
    iget-object v5, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 358
    .local v0, "con":Landroid/content/Context;
    const/4 v4, 0x0

    .line 359
    .local v4, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_4a

    .line 360
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 361
    .local v4, "res":Landroid/content/res/Resources;
    const-string/jumbo v5, "bool"

    invoke-virtual {v4, p2, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 362
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_29} :catch_4b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_29} :catch_2b

    move-result v5

    return v5

    .line 367
    .end local v0    # "con":Landroid/content/Context;
    .end local v4    # "res":Landroid/content/res/Resources;
    :catch_2b
    move-exception v2

    .line 368
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "SetcomNetworkSettingHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NullPointerException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_4a
    :goto_4a
    return v8

    .line 364
    :catch_4b
    move-exception v1

    .line 366
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "SetcomNetworkSettingHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NameNotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method private getDefaultIntegerValue(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "Name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "con":Landroid/content/Context;
    const/4 v3, 0x0

    .line 337
    .local v3, "id":I
    :try_start_3
    iget-object v5, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 338
    .local v0, "con":Landroid/content/Context;
    const/4 v4, 0x0

    .line 339
    .local v4, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_4a

    .line 340
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 341
    .local v4, "res":Landroid/content/res/Resources;
    const-string/jumbo v5, "integer"

    invoke-virtual {v4, p2, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 342
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_29} :catch_4b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_29} :catch_2b

    move-result v5

    return v5

    .line 347
    .end local v0    # "con":Landroid/content/Context;
    .end local v4    # "res":Landroid/content/res/Resources;
    :catch_2b
    move-exception v2

    .line 348
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "SetcomNetworkSettingHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NullPointerException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_4a
    :goto_4a
    return v8

    .line 344
    :catch_4b
    move-exception v1

    .line 346
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "SetcomNetworkSettingHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NameNotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method public static getDefaultSubIdForLMR1()I
    .registers 9

    .prologue
    .line 302
    const/4 v4, -0x1

    .line 305
    .local v4, "result":I
    :try_start_1
    const-string/jumbo v7, "android.telephony.SubscriptionManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 306
    .local v2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "getDefaultSubId"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 307
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 308
    .local v5, "returnResult":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0

    .line 309
    .local v6, "retval":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    move-result v4

    .line 314
    .end local v2    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "returnResult":Ljava/lang/Object;
    .end local v6    # "retval":Ljava/lang/Integer;
    :goto_21
    return v4

    .line 310
    :catch_22
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SetcomNetworkSettingHandler"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private getUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 296
    invoke-static {}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->getDefaultSubIdForLMR1()I

    move-result v0

    .line 297
    .local v0, "subId":I
    const-string/jumbo v1, "SetcomNetworkSettingHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUri, subId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string/jumbo v0, "<%s>%s</%s>"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "xmlcontent"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string/jumbo v0, "<?xml version=\"1.0\"?><%s>%s</%s>"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private queryNfcSetting()Ljava/lang/String;
    .registers 6

    .prologue
    .line 158
    const-string/jumbo v3, "SetcomNetworkSettingHandler"

    const-string/jumbo v4, "queryNfcSetting()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string/jumbo v0, "nfc_on"

    .line 160
    .local v0, "NFC_ON":Ljava/lang/String;
    const/4 v1, -0x1

    .line 162
    .local v1, "isNfcEnabled":I
    iget-boolean v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->isSupportNFC:Z

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_1e

    .line 163
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v1, 0x1

    .line 166
    :cond_1e
    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "nfc_on"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 163
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_36
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method private querySecureSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private querySecureSettings([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    array-length v3, p1

    :goto_7
    if-ge v2, v3, :cond_19

    aget-object v0, p1, v2

    .line 143
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->querySecureSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 145
    .end local v0    # "name":Ljava/lang/String;
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private querySettings(Ljava/lang/String;)V
    .registers 6
    .param p1, "xmlpath"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v1, "settings":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->networksSettings:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->querySystemSettings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->networksSettingsSecure:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->querySecureSettings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->queryNfcSetting()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v2, "networks"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    return-void
.end method

.method private querySystemSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private querySystemSettings([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    array-length v3, p1

    :goto_7
    if-ge v2, v3, :cond_19

    aget-object v0, p1, v2

    .line 135
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->querySystemSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->makeElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 137
    .end local v0    # "name":Ljava/lang/String;
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private resetAPN()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 288
    const-string/jumbo v2, "content://telephony/carriers/restore"

    .line 289
    .local v2, "restoreCarriersUri":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 291
    .local v0, "defaultApnUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 292
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method private resetAirplaneMode()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 439
    iget-object v1, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 440
    const-string/jumbo v2, "airplane_mode_on"

    .line 439
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    iget-object v1, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 438
    return-void
.end method

.method private resetBT()V
    .registers 5

    .prologue
    .line 375
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 376
    .local v1, "mBtAdapter":Landroid/bluetooth/BluetoothAdapter;
    const-string/jumbo v2, "SetcomNetworkSettingHandler"

    const-string/jumbo v3, "resetBT()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-eqz v1, :cond_1f

    .line 379
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lg_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 381
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.settings.bluetooth.RESET_BLUETOOTH_SETTING_VALUE_VIA_AT_COMMAND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    return-void
.end method

.method private resetMobileData()V
    .registers 2

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->setMobileDataEnabled(Z)V

    .line 325
    return-void
.end method

.method private resetNFC()V
    .registers 9

    .prologue
    .line 387
    const-string/jumbo v4, "SetcomNetworkSettingHandler"

    const-string/jumbo v5, "resetNFC()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v4, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    if-nez v4, :cond_e

    .line 389
    return-void

    .line 392
    :cond_e
    iget-object v4, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 393
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v4, "android.hardware.nfc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->isSupportNFC:Z

    .line 395
    iget-boolean v4, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->isSupportNFC:Z

    if-nez v4, :cond_22

    .line 396
    return-void

    .line 399
    :cond_22
    iget-object v4, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 400
    iget-object v4, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "nfc"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NfcManager;

    .line 402
    .local v2, "mNfcManager":Landroid/nfc/NfcManager;
    if-eqz v2, :cond_63

    .line 403
    invoke-virtual {v2}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 404
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    .line 406
    .local v1, "mNfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    iget-object v4, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v4, :cond_63

    if-eqz v1, :cond_63

    .line 407
    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->resetNfcSettings()Z

    .line 408
    iget-object v5, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->obj:Ljava/lang/Object;

    monitor-enter v5

    .line 410
    :try_start_54
    iget-object v4, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->obj:Ljava/lang/Object;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_5b} :catch_64
    .catchall {:try_start_54 .. :try_end_5b} :catchall_84

    :goto_5b
    monitor-exit v5

    .line 415
    iget-object v4, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 386
    .end local v1    # "mNfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_63
    return-void

    .line 411
    .restart local v1    # "mNfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :catch_64
    move-exception v0

    .line 412
    .local v0, "exception":Ljava/lang/InterruptedException;
    :try_start_65
    const-string/jumbo v4, "SetcomNetworkSettingHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "InterruptedException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_65 .. :try_end_83} :catchall_84

    goto :goto_5b

    .line 408
    .end local v0    # "exception":Ljava/lang/InterruptedException;
    :catchall_84
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private resetRoaming()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 319
    const-string/jumbo v1, "data_roaming"

    .line 318
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 322
    const-string/jumbo v1, "data_roaming_enhanced_4g_lte_mode"

    .line 321
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    return-void
.end method

.method private resetWifi()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 183
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 185
    .local v2, "wifiApState":I
    const-string/jumbo v3, "SetcomNetworkSettingHandler"

    const-string/jumbo v6, "resetWifi"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_scan_always_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_networks_available_notification_on"

    .line 189
    const-string/jumbo v3, "com.android.providers.settings"

    const-string/jumbo v8, "def_networks_available_notification_on"

    invoke-direct {p0, v3, v8}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->getDefaultBooleanValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    move v3, v4

    .line 188
    :goto_34
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_sleep_policy"

    .line 193
    const-string/jumbo v7, "com.android.providers.settings"

    const-string/jumbo v8, "def_wifi_sleep_policy"

    invoke-direct {p0, v7, v8}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->getDefaultIntegerValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 192
    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "ATT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "US"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 203
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_auto_connect"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    :cond_73
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_8f

    .line 209
    const/16 v3, 0xc

    if-eq v2, v3, :cond_7f

    .line 210
    const/16 v3, 0xd

    if-ne v2, v3, :cond_84

    .line 213
    :cond_7f
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v9, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 216
    :cond_84
    :try_start_84
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_8a
    .catch Ljava/lang/SecurityException; {:try_start_84 .. :try_end_8a} :catch_92

    .line 222
    :goto_8a
    const-wide/16 v4, 0xbb8

    :try_start_8c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8f
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_8f} :catch_b2

    .line 181
    :cond_8f
    :goto_8f
    return-void

    :cond_90
    move v3, v5

    .line 189
    goto :goto_34

    .line 217
    :catch_92
    move-exception v1

    .line 218
    .local v1, "se":Ljava/lang/SecurityException;
    const-string/jumbo v3, "SetcomNetworkSettingHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SecurityException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 223
    .end local v1    # "se":Ljava/lang/SecurityException;
    :catch_b2
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "SetcomNetworkSettingHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.sleep got exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f
.end method

.method private resetWifiHotSpot()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 231
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "randomUUID":Ljava/lang/String;
    const-string/jumbo v1, "AndroidAP"

    .line 233
    .local v1, "mHotspotSSID":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 234
    .local v0, "mHotspotPreSharedKey":Ljava/lang/String;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 236
    const-string/jumbo v3, "SetcomNetworkSettingHandler"

    const-string/jumbo v4, "resetWifiHotSpot"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_da

    .line 242
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_58

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    iget-object v4, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lg_device_name"

    .line 243
    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 245
    const-string/jumbo v4, "_"

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 245
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    :cond_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 250
    const/16 v4, 0x9

    const/16 v5, 0xd

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 256
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 259
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 260
    const-string/jumbo v4, "mhs_security"

    const-string/jumbo v5, "WPA2_PSK"

    .line 259
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 261
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 264
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 265
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 266
    const-string/jumbo v4, "mhs_hidden_ssid"

    .line 265
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 270
    const-string/jumbo v4, "mhs_max_client"

    .line 269
    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 274
    const-string/jumbo v4, "mhs_frequency"

    .line 273
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 276
    const-string/jumbo v4, "mhs_2g_channel"

    .line 275
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 277
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 278
    const-string/jumbo v4, "mhs_5g_channel"

    .line 277
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    iget-object v3, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 229
    :cond_da
    return-void
.end method

.method private resetWifiProfile()V
    .registers 4

    .prologue
    .line 178
    const-string/jumbo v0, "SetcomNetworkSettingHandler"

    const-string/jumbo v1, "resetWifiProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.wifi.setting.RESET_WPA_SUPPLICANT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method private save(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "xml"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 114
    .local v1, "f":Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1a

    .line 116
    .end local v1    # "f":Ljava/io/FileWriter;
    .local v2, "f":Ljava/io/FileWriter;
    :try_start_6
    invoke-virtual {v2, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    .line 118
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 125
    const/4 v3, 0x1

    return v3

    .line 117
    :catchall_e
    move-exception v3

    .line 118
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 117
    throw v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_13

    .line 120
    :catch_13
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 121
    .end local v2    # "f":Ljava/io/FileWriter;
    :goto_15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 122
    const/4 v3, 0x0

    return v3

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "f":Ljava/io/FileWriter;
    :catch_1a
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_15
.end method


# virtual methods
.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 78
    .local v1, "responseString":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->resetAirplaneMode()V

    .line 79
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->resetMobileData()V

    .line 80
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->resetRoaming()V

    .line 81
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->resetAPN()V

    .line 82
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->resetNFC()V

    .line 83
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->resetBT()V

    .line 84
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->resetWifi()V

    .line 85
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->resetWifiHotSpot()V

    .line 87
    const-string/jumbo v0, "/mnt/sdcard/network_settings_lge.xml"

    .line 88
    .local v0, "SETTINGS_XML":Ljava/lang/String;
    const-string/jumbo v2, "/mnt/sdcard/network_settings_lge.xml"

    invoke-direct {p0, v2}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->querySettings(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->resetWifiProfile()V

    .line 93
    const-string/jumbo v2, "/mnt/sdcard/network_settings_lge.xml"

    return-object v2
.end method

.method public setMobileDataEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomNetworkSettingsHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 329
    return-void
.end method
