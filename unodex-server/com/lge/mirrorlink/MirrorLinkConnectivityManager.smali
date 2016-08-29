.class public Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;
.super Ljava/lang/Object;
.source "MirrorLinkConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$TetherStateChangeListender;,
        Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$1;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:[Ljava/lang/String;

.field public static final MODE_ALL_INTERFACES:I = 0xff

.field public static final MODE_ALL_TETHERED:I = 0xf

.field public static final MODE_DEFAULT:I = 0xff

.field public static final MODE_USB_TETHERED:I = 0x1

.field public static final MODE_WIFI:I = 0x10

.field public static final MODE_WIFI_TETHERED:I = 0x2


# instance fields
.field cm:Landroid/net/ConnectivityManager;

.field private context:Landroid/content/Context;

.field currentNetworkInterfaces:[Ljava/lang/String;

.field tetherStateChangeListener:Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$TetherStateChangeListender;

.field tetherStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field usbRegexs:[Ljava/lang/String;

.field wifiRegexs:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;Ljava/util/List;)Z
    .registers 3
    .param p1, "tethered"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->isTetheredInterfacesChanged(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->EMPTY_STRING:[Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v3, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->context:Landroid/content/Context;

    .line 45
    iput-object v3, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->cm:Landroid/net/ConnectivityManager;

    .line 46
    iput-object v3, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->usbRegexs:[Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->wifiRegexs:[Ljava/lang/String;

    .line 48
    sget-object v1, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->EMPTY_STRING:[Ljava/lang/String;

    iput-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->currentNetworkInterfaces:[Ljava/lang/String;

    .line 523
    iput-object v3, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->tetherStateChangeListener:Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$TetherStateChangeListender;

    .line 524
    new-instance v1, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$1;

    invoke-direct {v1, p0}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$1;-><init>(Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->tetherStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    if-nez p1, :cond_25

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Fail to create TmConnectivityStatus, null Context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_25
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->context:Landroid/content/Context;

    .line 58
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->cm:Landroid/net/ConnectivityManager;

    .line 59
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->usbRegexs:[Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->usbRegexs:[Ljava/lang/String;

    if-eqz v1, :cond_63

    .line 61
    iget-object v3, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->usbRegexs:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_42
    if-ge v1, v4, :cond_63

    aget-object v0, v3, v1

    .line 62
    .local v0, "u":Ljava/lang/String;
    const-string/jumbo v5, "MirrorLinkServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "usb reg :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 64
    .end local v0    # "u":Ljava/lang/String;
    :cond_63
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->wifiRegexs:[Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->wifiRegexs:[Ljava/lang/String;

    if-eqz v1, :cond_94

    .line 66
    iget-object v3, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->wifiRegexs:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_73
    if-ge v1, v4, :cond_94

    aget-object v0, v3, v1

    .line 67
    .restart local v0    # "u":Ljava/lang/String;
    const-string/jumbo v2, "MirrorLinkServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifi reg :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 51
    .end local v0    # "u":Ljava/lang/String;
    :cond_94
    return-void
.end method

.method private getBroadcastNetworkInterfaces()[Ljava/net/NetworkInterface;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 369
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v4, "broadcastInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    const/4 v7, 0x0

    .line 373
    .local v7, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :try_start_7
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    .line 374
    .local v7, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_b
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_138

    .line 375
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 376
    .local v6, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    .line 377
    .local v2, "addresslist":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    .line 378
    .local v0, "addr":Ljava/net/InterfaceAddress;
    if-eqz v0, :cond_1f

    .line 382
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    if-eqz v8, :cond_92

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v8

    if-eqz v8, :cond_92

    .line 383
    const-string/jumbo v8, "MirrorLinkServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " addr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " broadcast:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_7d
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v8

    if-eqz v8, :cond_1f

    .line 393
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_86} :catch_87

    goto :goto_1f

    .line 397
    .end local v0    # "addr":Ljava/net/InterfaceAddress;
    .end local v1    # "addr$iterator":Ljava/util/Iterator;
    .end local v2    # "addresslist":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    .end local v6    # "iface":Ljava/net/NetworkInterface;
    .end local v7    # "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_87
    move-exception v5

    .line 398
    .local v5, "e":Ljava/net/SocketException;
    const-string/jumbo v8, "MirrorLinkServer"

    const-string/jumbo v9, "No network interfaces available"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-object v11

    .line 384
    .end local v5    # "e":Ljava/net/SocketException;
    .restart local v0    # "addr":Ljava/net/InterfaceAddress;
    .restart local v1    # "addr$iterator":Ljava/util/Iterator;
    .restart local v2    # "addresslist":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    .restart local v6    # "iface":Ljava/net/NetworkInterface;
    .restart local v7    # "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_92
    :try_start_92
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    if-eqz v8, :cond_d1

    .line 385
    const-string/jumbo v8, "MirrorLinkServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " addr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " broadcast:null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 386
    :cond_d1
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v8

    if-eqz v8, :cond_111

    .line 387
    const-string/jumbo v8, "MirrorLinkServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " addr:null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " broadcast:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7d

    .line 389
    :cond_111
    const-string/jumbo v8, "MirrorLinkServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " addr:null broadcast:null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catch Ljava/net/SocketException; {:try_start_92 .. :try_end_136} :catch_87

    goto/16 :goto_7d

    .line 402
    .end local v0    # "addr":Ljava/net/InterfaceAddress;
    .end local v1    # "addr$iterator":Ljava/util/Iterator;
    .end local v2    # "addresslist":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    .end local v6    # "iface":Ljava/net/NetworkInterface;
    :cond_138
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_148

    .line 403
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v3, v8, [Ljava/net/NetworkInterface;

    .line 404
    .local v3, "arrayToReturn":[Ljava/net/NetworkInterface;
    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 405
    return-object v3

    .line 407
    .end local v3    # "arrayToReturn":[Ljava/net/NetworkInterface;
    :cond_148
    return-object v11
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getNetworkInterface(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 244
    if-nez p1, :cond_4

    .line 245
    return-object v5

    .line 248
    :cond_4
    const/4 v2, 0x0

    .line 250
    .local v2, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_8} :catch_20

    move-result-object v2

    .line 256
    .local v2, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_9
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 257
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 258
    .local v1, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 259
    return-object v1

    .line 251
    .end local v1    # "iface":Ljava/net/NetworkInterface;
    .local v2, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_20
    move-exception v0

    .line 252
    .local v0, "e":Ljava/net/SocketException;
    const-string/jumbo v3, "MirrorLinkServer"

    const-string/jumbo v4, "No network interfaces available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-object v5

    .line 263
    .end local v0    # "e":Ljava/net/SocketException;
    .local v2, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2b
    return-object v5
.end method

.method private getNetworkInterfaceNames([Ljava/net/NetworkInterface;)[Ljava/lang/String;
    .registers 7
    .param p1, "interfaces"    # [Ljava/net/NetworkInterface;

    .prologue
    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_17

    .line 190
    const/4 v2, 0x0

    array-length v3, p1

    :goto_9
    if-ge v2, v3, :cond_17

    aget-object v0, p1, v2

    .line 191
    .local v0, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 195
    .end local v0    # "iface":Ljava/net/NetworkInterface;
    :cond_17
    sget-object v2, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->EMPTY_STRING:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private isHostAddressInRange(Ljava/net/InetAddress;)Z
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 484
    if-eqz p1, :cond_2a

    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_2a

    .line 488
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "hostAddress":Ljava/lang/String;
    const-string/jumbo v1, "MirrorLinkServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v1, 0x1

    return v1

    .line 485
    .end local v0    # "hostAddress":Ljava/lang/String;
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method private isIncluded(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 146
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    .line 147
    array-length v3, p2

    move v1, v2

    :goto_7
    if-ge v1, v3, :cond_16

    aget-object v0, p2, v1

    .line 148
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 149
    const/4 v1, 0x1

    return v1

    .line 147
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 154
    .end local v0    # "str":Ljava/lang/String;
    :cond_16
    return v2
.end method

.method private isMatched(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "regexps"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 128
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    .line 129
    array-length v3, p2

    move v1, v2

    :goto_7
    if-ge v1, v3, :cond_16

    aget-object v0, p2, v1

    .line 130
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 131
    const/4 v1, 0x1

    return v1

    .line 129
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 136
    .end local v0    # "regex":Ljava/lang/String;
    :cond_16
    return v2
.end method

.method private isTetheredInterfacesChanged(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "tethered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 206
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->currentNetworkInterfaces:[Ljava/lang/String;

    .line 207
    .local v1, "prevNetworkInterfaces":[Ljava/lang/String;
    sget-object v2, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->EMPTY_STRING:[Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->currentNetworkInterfaces:[Ljava/lang/String;

    .line 209
    if-nez v1, :cond_12

    .line 210
    sget-object v1, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->EMPTY_STRING:[Ljava/lang/String;

    .line 213
    :cond_12
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->currentNetworkInterfaces:[Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 214
    sget-object v2, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->EMPTY_STRING:[Ljava/lang/String;

    iput-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->currentNetworkInterfaces:[Ljava/lang/String;

    .line 217
    :cond_1a
    const-string/jumbo v2, "MirrorLinkServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTetheredInterfacesChanged : currentNetworkInterfaces.length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->currentNetworkInterfaces:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string/jumbo v2, "MirrorLinkServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTetheredInterfacesChanged : prevNetworkInterfaces.length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->currentNetworkInterfaces:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_99

    .line 220
    array-length v2, v1

    iget-object v4, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->currentNetworkInterfaces:[Ljava/lang/String;

    array-length v4, v4

    if-ne v2, v4, :cond_89

    .line 221
    iget-object v4, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->currentNetworkInterfaces:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_61
    if-ge v2, v5, :cond_99

    aget-object v0, v4, v2

    .line 222
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->isIncluded(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_86

    .line 223
    const-string/jumbo v2, "MirrorLinkServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "new interface found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v7

    .line 221
    :cond_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 227
    .end local v0    # "name":Ljava/lang/String;
    :cond_89
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->currentNetworkInterfaces:[Ljava/lang/String;

    array-length v2, v2

    array-length v4, v1

    if-le v2, v4, :cond_99

    .line 228
    const-string/jumbo v2, "MirrorLinkServer"

    const-string/jumbo v3, "new interface found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v7

    .line 233
    :cond_99
    const-string/jumbo v2, "MirrorLinkServer"

    const-string/jumbo v4, "nothing new"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v3
.end method

.method private isUSB(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->usbRegexs:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->isMatched(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isWifi(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->wifiRegexs:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->isMatched(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBindAddress(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;
    .registers 6
    .param p1, "netInterface"    # Ljava/net/NetworkInterface;

    .prologue
    const/4 v3, 0x0

    .line 419
    if-eqz p1, :cond_1a

    .line 420
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 421
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 422
    .local v1, "inetAddress":Ljava/net/InetAddress;
    invoke-direct {p0, v1}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->isHostAddressInRange(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 423
    return-object v1

    .line 427
    .end local v0    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_1a
    return-object v3
.end method

.method public getLocalAddressString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 451
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->getNetworkInterfaces()[Ljava/net/NetworkInterface;

    move-result-object v2

    .line 452
    .local v2, "netInterfaces":[Ljava/net/NetworkInterface;
    array-length v4, v2

    :goto_6
    if-ge v3, v4, :cond_1a

    aget-object v1, v2, v3

    .line 453
    .local v1, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {p0, v1}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->getLocalAddressString(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "addrStr":Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_17

    .line 455
    return-object v0

    .line 452
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 459
    .end local v0    # "addrStr":Ljava/lang/String;
    .end local v1    # "iface":Ljava/net/NetworkInterface;
    :cond_1a
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public getLocalAddressString(Ljava/net/NetworkInterface;)Ljava/lang/String;
    .registers 4
    .param p1, "netInterface"    # Ljava/net/NetworkInterface;

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->getBindAddress(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;

    move-result-object v0

    .line 470
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_f

    .line 471
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 473
    :cond_f
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getNetworkInterfaces()[Ljava/net/NetworkInterface;
    .registers 2

    .prologue
    .line 273
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->getNetworkInterfaces(I)[Ljava/net/NetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInterfaces(I)[Ljava/net/NetworkInterface;
    .registers 10
    .param p1, "mode"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "availableIfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->getTetheredNetworkInterfaces()[Ljava/net/NetworkInterface;

    move-result-object v3

    .line 287
    .local v3, "tethered":[Ljava/net/NetworkInterface;
    if-nez v3, :cond_17

    and-int/lit16 v4, p1, 0xf0

    if-lez v4, :cond_17

    .line 288
    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->getBroadcastNetworkInterfaces()[Ljava/net/NetworkInterface;

    move-result-object v4

    return-object v4

    .line 291
    :cond_17
    const/16 v4, 0xff

    if-eq p1, v4, :cond_1f

    const/16 v4, 0xf

    if-ne p1, v4, :cond_20

    .line 292
    :cond_1f
    return-object v3

    .line 293
    :cond_20
    if-ne p1, v7, :cond_43

    .line 294
    if-eqz v3, :cond_66

    .line 295
    array-length v6, v3

    move v4, v5

    :goto_26
    if-ge v4, v6, :cond_3a

    aget-object v1, v3, v4

    .line 296
    .local v1, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "ifaceName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->isUSB(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 298
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 301
    .end local v1    # "iface":Ljava/net/NetworkInterface;
    .end local v2    # "ifaceName":Ljava/lang/String;
    :cond_3a
    new-array v4, v5, [Ljava/net/NetworkInterface;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/net/NetworkInterface;

    return-object v4

    .line 303
    :cond_43
    if-ne p1, v7, :cond_66

    .line 305
    if-eqz v3, :cond_66

    .line 306
    array-length v6, v3

    move v4, v5

    :goto_49
    if-ge v4, v6, :cond_5d

    aget-object v1, v3, v4

    .line 307
    .restart local v1    # "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    .line 308
    .restart local v2    # "ifaceName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->isWifi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 309
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 312
    .end local v1    # "iface":Ljava/net/NetworkInterface;
    .end local v2    # "ifaceName":Ljava/lang/String;
    :cond_5d
    new-array v4, v5, [Ljava/net/NetworkInterface;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/net/NetworkInterface;

    return-object v4

    .line 316
    :cond_66
    return-object v6
.end method

.method public getTetheredNetworkInterfaces()[Ljava/net/NetworkInterface;
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 326
    const/4 v3, 0x0

    .line 329
    .local v3, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_5} :catch_4c

    move-result-object v3

    .line 335
    .local v3, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    iget-object v7, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v5

    .line 336
    .local v5, "tethered":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v6, "tetheredInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :goto_11
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_79

    .line 338
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 339
    .local v2, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, v4, v5}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->isIncluded(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 342
    const-string/jumbo v7, "MirrorLinkServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getTetheredNetworkInterface] iface="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " tethered"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 330
    .end local v2    # "iface":Ljava/net/NetworkInterface;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "tethered":[Ljava/lang/String;
    .end local v6    # "tetheredInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .local v3, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_4c
    move-exception v1

    .line 331
    .local v1, "e":Ljava/net/SocketException;
    const-string/jumbo v7, "MirrorLinkServer"

    const-string/jumbo v8, "No network interfaces available"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-object v10

    .line 348
    .end local v1    # "e":Ljava/net/SocketException;
    .restart local v2    # "iface":Ljava/net/NetworkInterface;
    .local v3, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "tethered":[Ljava/lang/String;
    .restart local v6    # "tetheredInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :cond_57
    const-string/jumbo v7, "MirrorLinkServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getTetheredNetworkInterface] iface="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : not tethered"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 352
    .end local v2    # "iface":Ljava/net/NetworkInterface;
    .end local v4    # "name":Ljava/lang/String;
    :cond_79
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_89

    .line 353
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v0, v7, [Ljava/net/NetworkInterface;

    .line 354
    .local v0, "arrayToReturn":[Ljava/net/NetworkInterface;
    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 355
    return-object v0

    .line 357
    .end local v0    # "arrayToReturn":[Ljava/net/NetworkInterface;
    :cond_89
    const-string/jumbo v7, "MirrorLinkServer"

    const-string/jumbo v8, "[getTetheredNetworkInterface] tethered interface not exist"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-object v10
.end method

.method public hasAvailableConnectivity()Z
    .registers 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->getNetworkInterfaces()[Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->hasBindAddress([Ljava/net/NetworkInterface;)Z

    move-result v0

    return v0
.end method

.method public hasAvailableConnectivity(Ljava/lang/String;)Z
    .registers 4
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->getNetworkInterface(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->getBindAddress(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;

    move-result-object v0

    .line 174
    .local v0, "address":Ljava/net/InetAddress;
    if-eqz v0, :cond_c

    .line 175
    const/4 v1, 0x1

    return v1

    .line 177
    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method public hasBindAddress([Ljava/net/NetworkInterface;)Z
    .registers 7
    .param p1, "netInterfaces"    # [Ljava/net/NetworkInterface;

    .prologue
    const/4 v2, 0x0

    .line 432
    if-eqz p1, :cond_14

    .line 433
    array-length v3, p1

    move v1, v2

    :goto_5
    if-ge v1, v3, :cond_14

    aget-object v0, p1, v1

    .line 434
    .local v0, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->getBindAddress(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 435
    const/4 v1, 0x1

    return v1

    .line 433
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 440
    .end local v0    # "iface":Ljava/net/NetworkInterface;
    :cond_14
    return v2
.end method

.method public isNCMConnected()Z
    .registers 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->context:Landroid/content/Context;

    const-string/jumbo v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 93
    .local v0, "mUsbManager":Landroid/hardware/usb/UsbManager;
    const-string/jumbo v1, "ncm"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isUSBTethered()Z
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "tethered":[Ljava/lang/String;
    if-nez v1, :cond_a

    .line 76
    return v3

    .line 79
    :cond_a
    array-length v4, v1

    move v2, v3

    :goto_c
    if-ge v2, v4, :cond_5f

    aget-object v0, v1, v2

    .line 80
    .local v0, "t":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->usbRegexs:[Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->isIncluded(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 81
    const-string/jumbo v2, "MirrorLinkServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isUSBTethered] tethered iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is USB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v2, 0x1

    return v2

    .line 84
    :cond_3b
    const-string/jumbo v5, "MirrorLinkServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[isUSBTethered] tethered iface="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : not USB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 87
    .end local v0    # "t":Ljava/lang/String;
    :cond_5f
    return v3
.end method

.method public registerBroadcastReceiver()V
    .registers 5

    .prologue
    .line 559
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->context:Landroid/content/Context;

    .line 560
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->tetherStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 561
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 557
    return-void
.end method

.method public setTetherStateChangerListener(Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$TetherStateChangeListender;)V
    .registers 2
    .param p1, "listener"    # Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$TetherStateChangeListender;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->tetherStateChangeListener:Lcom/lge/mirrorlink/MirrorLinkConnectivityManager$TetherStateChangeListender;

    .line 552
    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .registers 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkConnectivityManager;->tetherStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 565
    return-void
.end method
