.class public abstract Lcom/lge/wifi/p2p/LGP2pManager;
.super Ljava/lang/Object;
.source "LGP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;,
        Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;,
        Lcom/lge/wifi/p2p/LGP2pManager$LGP2pEventListener;,
        Lcom/lge/wifi/p2p/LGP2pManager$LGP2pRespIntListener;
    }
.end annotation


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.wifi.lgp2p"

.field public static final LGP2P_ADV_INFO_CHANGED_ACTION:Ljava/lang/String; = "com.lge.wifi.p2p.ADV_INFO_CHANGED"

.field public static final SERVICE_ID_UNKNOWN:I = 0x0

.field public static final SERVICE_ID_WFDS_SEND:I = 0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "LGP2pService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final serviceIdToName(I)Ljava/lang/String;
    .registers 2
    .param p0, "serviceId"    # I

    .prologue
    .line 29
    packed-switch p0, :pswitch_data_a

    .line 34
    const-string v0, ""

    :goto_5
    return-object v0

    .line 31
    :pswitch_6
    const-string v0, "org.wi-fi.wfds.send.rx"

    goto :goto_5

    .line 29
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public abstract advertiseService(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;ILcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;)V
.end method

.method public abstract advertiseService(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Ljava/lang/String;Lcom/lge/wifi/p2p/LGP2pManager$LGP2pRespIntListener;)V
.end method

.method public abstract advertiseService(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Ljava/lang/String;Ljava/lang/String;Lcom/lge/wifi/p2p/LGP2pManager$LGP2pRespIntListener;)V
.end method

.method public abstract cancelConnect(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Ljava/lang/String;Lcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;)V
.end method

.method public abstract connect(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Ljava/lang/String;IZLcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;)V
.end method

.method public abstract connect(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Ljava/lang/String;Ljava/lang/String;ZLcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;)V
.end method

.method public abstract connect(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Ljava/lang/String;ZLcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;)V
.end method

.method public abstract deinitialize(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;)V
.end method

.method public abstract deregisterService(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;ILcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;)V
.end method

.method public abstract disconnect(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Ljava/lang/String;ILcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;)V
.end method

.method public abstract disconnect(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Ljava/lang/String;Lcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;)V
.end method

.method public abstract disconnect(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Ljava/lang/String;Ljava/lang/String;Lcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;)V
.end method

.method public abstract discoverService(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Ljava/lang/String;Lcom/lge/wifi/p2p/LGP2pManager$LGP2pRespIntListener;)V
.end method

.method public abstract discoverService(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Ljava/lang/String;ZLcom/lge/wifi/p2p/LGP2pManager$LGP2pRespIntListener;)V
.end method

.method public abstract getConnectionInfo(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;)Lcom/lge/wifi/p2p/LGP2pConnectionInfo;
.end method

.method public abstract getDiscoverResults(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;)Lcom/lge/wifi/p2p/LGP2pDeviceList;
.end method

.method public abstract getP2pAdvertiseInfo(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;)Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;
.end method

.method public abstract initialize(Landroid/content/Context;Landroid/os/Looper;Lcom/lge/wifi/p2p/LGP2pManager$LGP2pEventListener;)Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;
.end method

.method public abstract p2pFind(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;I)Z
.end method

.method public abstract p2pFind(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;ILcom/lge/wifi/p2p/LGP2pFindType;I)Z
.end method

.method public abstract p2pFindBlock(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Z)Z
.end method

.method public abstract p2pStopFind(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;)Z
.end method

.method public abstract p2pStopFind(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Z)Z
.end method

.method public abstract prepareOobConnection(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;ILcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;)V
.end method

.method public abstract prepareOobConnection(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Lcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;)V
.end method

.method public abstract registerService(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Ljava/lang/String;Ljava/lang/String;Lcom/lge/wifi/p2p/LGP2pManager$LGP2pRespIntListener;)V
.end method

.method public abstract setOobDiscoverResult(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;Lcom/lge/wifi/p2p/LGP2pOobDevice;Z)Z
.end method

.method public abstract stopAdvertiseService(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;ILcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;)V
.end method

.method public abstract stopDiscoverService(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;ILcom/lge/wifi/p2p/LGP2pManager$LGP2pActionListener;)V
.end method
