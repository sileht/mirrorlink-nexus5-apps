.class public Lcom/lge/android/atservice/PreWifiTest;
.super Ljava/lang/Object;
.source "PreWifiTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreWifiTest"

.field private static sWifiConnected:Z

.field private static sWl:Landroid/os/PowerManager$WakeLock;

.field private static scanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPM:Landroid/os/PowerManager;

.field private mServiceContext:Lcom/lge/systemservice/core/LGContext;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/lge/android/atservice/PreWifiTest;)Landroid/net/NetworkInfo;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/android/atservice/PreWifiTest;)Landroid/net/wifi/WifiInfo;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/lge/android/atservice/PreWifiTest;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/lge/android/atservice/PreWifiTest;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2

    iput-object p1, p0, Lcom/lge/android/atservice/PreWifiTest;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic -set1(Lcom/lge/android/atservice/PreWifiTest;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .registers 2

    iput-object p1, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic -set2(Z)Z
    .registers 1

    sput-boolean p0, Lcom/lge/android/atservice/PreWifiTest;->sWifiConnected:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/android/atservice/PreWifiTest;->sWifiConnected:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/lge/android/atservice/PreWifiTest;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 56
    iput-object v0, p0, Lcom/lge/android/atservice/PreWifiTest;->mPM:Landroid/os/PowerManager;

    .line 60
    const-string/jumbo v0, "PreWifiTest"

    const-string/jumbo v1, "Create PreWifiTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-object p1, p0, Lcom/lge/android/atservice/PreWifiTest;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method private acquireWakeLock(I)V
    .registers 6
    .param p1, "timeout"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest;->mPM:Landroid/os/PowerManager;

    const-string/jumbo v1, "PreWifiTest"

    const v2, 0x3000001a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/lge/android/atservice/PreWifiTest;->sWl:Landroid/os/PowerManager$WakeLock;

    .line 345
    sget-object v0, Lcom/lge/android/atservice/PreWifiTest;->sWl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/lge/android/atservice/PreWifiTest;->sWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 342
    :cond_1a
    :goto_1a
    return-void

    .line 346
    :cond_1b
    sget-object v0, Lcom/lge/android/atservice/PreWifiTest;->sWl:Landroid/os/PowerManager$WakeLock;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_1a
.end method

.method private convertFreqToChannel(I)I
    .registers 5
    .param p1, "freq"    # I

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, "ch":I
    const/16 v1, 0x96c

    .local v1, "i":I
    :goto_3
    const/16 v2, 0x9a8

    if-gt v1, v2, :cond_f

    .line 309
    add-int/lit8 v0, v0, 0x1

    .line 310
    if-ne p1, v1, :cond_c

    .line 311
    return v0

    .line 308
    :cond_c
    add-int/lit8 v1, v1, 0x5

    goto :goto_3

    .line 315
    :cond_f
    const/16 v0, 0x22

    .line 316
    const/16 v1, 0x1432

    :goto_13
    const/16 v2, 0x1478

    if-gt v1, v2, :cond_1f

    .line 317
    if-ne p1, v1, :cond_1a

    .line 318
    return v0

    .line 320
    :cond_1a
    add-int/lit8 v0, v0, 0x2

    .line 316
    add-int/lit8 v1, v1, 0xa

    goto :goto_13

    .line 323
    :cond_1f
    const/16 v0, 0x34

    .line 324
    const/16 v1, 0x148c

    :goto_23
    const/16 v2, 0x1608

    if-gt v1, v2, :cond_2f

    .line 325
    if-ne p1, v1, :cond_2a

    .line 326
    return v0

    .line 328
    :cond_2a
    add-int/lit8 v0, v0, 0x4

    .line 324
    add-int/lit8 v1, v1, 0x14

    goto :goto_23

    .line 331
    :cond_2f
    const/16 v0, 0x95

    .line 332
    const/16 v1, 0x1671

    :goto_33
    const/16 v2, 0x16c1

    if-gt v1, v2, :cond_3f

    .line 333
    if-ne p1, v1, :cond_3a

    .line 334
    return v0

    .line 336
    :cond_3a
    add-int/lit8 v0, v0, 0x4

    .line 332
    add-int/lit8 v1, v1, 0x14

    goto :goto_33

    .line 339
    :cond_3f
    return v0
.end method

.method private releaseWakeLock()V
    .registers 2

    .prologue
    .line 351
    sget-object v0, Lcom/lge/android/atservice/PreWifiTest;->sWl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/lge/android/atservice/PreWifiTest;->sWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 352
    sget-object v0, Lcom/lge/android/atservice/PreWifiTest;->sWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 350
    :cond_11
    return-void
.end method

.method private setChannel(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .registers 9
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 291
    .local v0, "ch":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 292
    .local v1, "channel":I
    iget-object v5, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 293
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_33

    .line 294
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "result$iterator":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 295
    .local v2, "result":Landroid/net/wifi/ScanResult;
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 296
    iget v5, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v5}, Lcom/lge/android/atservice/PreWifiTest;->convertFreqToChannel(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 302
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v3    # "result$iterator":Ljava/util/Iterator;
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public WiFiConnect()Z
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 204
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 206
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    sget-object v5, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    if-eqz v5, :cond_13

    sget-object v5, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1f

    .line 207
    :cond_13
    const-string/jumbo v5, "PreWifiTest"

    const-string/jumbo v6, "Scan result is null or empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sput-boolean v8, Lcom/lge/android/atservice/PreWifiTest;->sWifiConnected:Z

    .line 209
    return v8

    .line 213
    :cond_1f
    iget-object v5, p0, Lcom/lge/android/atservice/PreWifiTest;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v7, :cond_40

    .line 214
    iget-object v5, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 215
    iget-object v5, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_a6

    .line 216
    sput-boolean v6, Lcom/lge/android/atservice/PreWifiTest;->sWifiConnected:Z

    .line 217
    const-string/jumbo v5, "PreWifiTest"

    const-string/jumbo v7, "Wi-Fi is already connected"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_40
    :goto_40
    sget-boolean v5, Lcom/lge/android/atservice/PreWifiTest;->sWifiConnected:Z

    if-nez v5, :cond_c3

    .line 225
    sget-object v5, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "result$iterator":Ljava/util/Iterator;
    :cond_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 226
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v7, "WEP"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a9

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v7, "PSK"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a9

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v7, "EAP"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    :goto_75
    if-nez v5, :cond_4a

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 232
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_96
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v5, :cond_ab

    .line 233
    const-string/jumbo v5, "PreWifiTest"

    const-string/jumbo v6, "Open AP is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sput-boolean v8, Lcom/lge/android/atservice/PreWifiTest;->sWifiConnected:Z

    .line 235
    return v8

    .line 219
    .end local v4    # "result$iterator":Ljava/util/Iterator;
    :cond_a6
    sput-boolean v8, Lcom/lge/android/atservice/PreWifiTest;->sWifiConnected:Z

    goto :goto_40

    .restart local v3    # "result":Landroid/net/wifi/ScanResult;
    .restart local v4    # "result$iterator":Ljava/util/Iterator;
    :cond_a9
    move v5, v6

    .line 226
    goto :goto_75

    .line 237
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_ab
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    .line 238
    iget-object v5, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v6, Lcom/lge/android/atservice/PreWifiTest$3;

    invoke-direct {v6, p0}, Lcom/lge/android/atservice/PreWifiTest$3;-><init>(Lcom/lge/android/atservice/PreWifiTest;)V

    invoke-virtual {v5, v0, v6}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 249
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_bb
    const/16 v5, 0x1e

    if-ge v2, v5, :cond_c3

    .line 250
    sget-boolean v5, Lcom/lge/android/atservice/PreWifiTest;->sWifiConnected:Z

    if-eqz v5, :cond_c6

    .line 264
    .end local v2    # "i":I
    .end local v4    # "result$iterator":Ljava/util/Iterator;
    :cond_c3
    sget-boolean v5, Lcom/lge/android/atservice/PreWifiTest;->sWifiConnected:Z

    return v5

    .line 254
    .restart local v2    # "i":I
    .restart local v4    # "result$iterator":Ljava/util/Iterator;
    :cond_c6
    const-wide/16 v6, 0x3e8

    :try_start_c8
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_ce

    .line 249
    :goto_cb
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 255
    :catch_ce
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    sput-boolean v8, Lcom/lge/android/atservice/PreWifiTest;->sWifiConnected:Z

    .line 257
    const-string/jumbo v5, "PreWifiTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb
.end method

.method public WiFiConnectionInfo()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 268
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    .local v1, "rspResults":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 272
    sget-boolean v2, Lcom/lge/android/atservice/PreWifiTest;->sWifiConnected:Z

    if-eqz v2, :cond_ad

    iget-object v2, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_ad

    .line 273
    iget-object v2, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 274
    .local v0, "mConnectedIP":Ljava/net/InetAddress;
    iget-object v2, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 275
    const-string/jumbo v3, ","

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 275
    iget-object v3, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 276
    const-string/jumbo v3, ","

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 276
    iget-object v3, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 277
    const-string/jumbo v3, ","

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 277
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 278
    const-string/jumbo v3, ","

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 278
    iget-object v3, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 279
    const-string/jumbo v3, ","

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 279
    const-string/jumbo v3, "Open"

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 280
    const-string/jumbo v3, ","

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 280
    iget-object v3, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v3}, Lcom/lge/android/atservice/PreWifiTest;->setChannel(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    const-string/jumbo v2, "PreWifiTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Connection info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 285
    .end local v0    # "mConnectedIP":Ljava/net/InetAddress;
    :cond_ad
    return-object v3
.end method

.method public WiFiOff()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Lcom/lge/android/atservice/PreWifiTest;->releaseWakeLock()V

    .line 127
    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 128
    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 129
    const-string/jumbo v0, "PreWifiTest"

    const-string/jumbo v1, "Wi-Fi is disabled - success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v3

    .line 132
    :cond_1f
    const-string/jumbo v0, "PreWifiTest"

    const-string/jumbo v1, "Wi-Fi is disabled - fail "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v2

    .line 136
    :cond_29
    const-string/jumbo v0, "PreWifiTest"

    const-string/jumbo v1, "Wi-Fi is already disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v3
.end method

.method public WiFiOn()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 103
    const v0, 0x1b7740

    invoke-direct {p0, v0}, Lcom/lge/android/atservice/PreWifiTest;->acquireWakeLock(I)V

    .line 106
    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_sleep_policy"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_scan_always_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_45

    .line 113
    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 114
    const-string/jumbo v0, "PreWifiTest"

    const-string/jumbo v1, "Wi-Fi is enabled - success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v3

    .line 117
    :cond_3b
    const-string/jumbo v0, "PreWifiTest"

    const-string/jumbo v1, "Wi-Fi is enabled - fail "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v4

    .line 121
    :cond_45
    const-string/jumbo v0, "PreWifiTest"

    const-string/jumbo v1, "Wi-Fi is already enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v3
.end method

.method public WiFiScan()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 145
    iget-object v1, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 146
    const-string/jumbo v1, "PreWifiTest"

    const-string/jumbo v2, "Wi-Fi scan - wait for 3 sec for scan completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :try_start_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_33

    .line 152
    :goto_1a
    invoke-virtual {p0}, Lcom/lge/android/atservice/PreWifiTest;->WiFiScanResults()Ljava/lang/String;

    .line 153
    sget-object v1, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    if-nez v1, :cond_4f

    .line 154
    :cond_29
    const-string/jumbo v1, "PreWifiTest"

    const-string/jumbo v2, "Wi-Fi scan - success but scan list is empty - fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v4

    .line 149
    :catch_33
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PreWifiTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4f
    const/4 v1, 0x1

    return v1

    .line 159
    :cond_51
    return v4
.end method

.method public WiFiScanResults()Ljava/lang/String;
    .registers 8

    .prologue
    .line 164
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v3, "rspResults":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    .line 167
    new-instance v0, Lcom/lge/android/atservice/PreWifiTest$2;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/PreWifiTest$2;-><init>(Lcom/lge/android/atservice/PreWifiTest;)V

    .line 180
    .local v0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/net/wifi/ScanResult;>;"
    sget-object v4, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 181
    sget-object v4, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    if-eqz v4, :cond_b1

    .line 182
    sget-object v4, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x9

    if-ge v4, v5, :cond_aa

    sget-object v4, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 183
    .local v2, "idx":I
    :goto_2b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    if-ge v1, v2, :cond_b1

    .line 184
    const-string/jumbo v5, "PreWifiTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scan result ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object v4, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_ae

    sget-object v4, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_ae

    .line 186
    sget-object v4, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v4, Lcom/lge/android/atservice/PreWifiTest;->scanResults:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 187
    add-int/lit8 v4, v2, -0x1

    if-eq v1, v4, :cond_a7

    .line 188
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_a7
    :goto_a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 182
    .end local v1    # "i":I
    .end local v2    # "idx":I
    :cond_aa
    const/16 v2, 0x8

    .restart local v2    # "idx":I
    goto/16 :goto_2b

    .line 191
    .restart local v1    # "i":I
    :cond_ae
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 195
    .end local v1    # "i":I
    .end local v2    # "idx":I
    :cond_b1
    const-string/jumbo v4, "PreWifiTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Final scan result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public initPreWifiTest()V
    .registers 4

    .prologue
    .line 67
    const-string/jumbo v1, "wifi"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 68
    iget-object v1, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_56

    .line 69
    iget-object v1, p0, Lcom/lge/android/atservice/PreWifiTest;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 78
    iget-object v1, p0, Lcom/lge/android/atservice/PreWifiTest;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/lge/android/atservice/PreWifiTest;->mPM:Landroid/os/PowerManager;

    .line 80
    iget-object v1, p0, Lcom/lge/android/atservice/PreWifiTest;->mContext:Landroid/content/Context;

    .line 81
    new-instance v2, Lcom/lge/android/atservice/PreWifiTest$1;

    invoke-direct {v2, p0}, Lcom/lge/android/atservice/PreWifiTest$1;-><init>(Lcom/lge/android/atservice/PreWifiTest;)V

    .line 80
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    .end local v0    # "mIntentFilter":Landroid/content/IntentFilter;
    :cond_56
    return-void
.end method

.method public isWiFiOn()Z
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiConnected()Z
    .registers 2

    .prologue
    .line 200
    sget-boolean v0, Lcom/lge/android/atservice/PreWifiTest;->sWifiConnected:Z

    return v0
.end method
