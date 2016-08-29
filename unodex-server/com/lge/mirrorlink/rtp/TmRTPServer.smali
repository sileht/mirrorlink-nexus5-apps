.class public Lcom/lge/mirrorlink/rtp/TmRTPServer;
.super Ljava/lang/Object;
.source "TmRTPServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;,
        Lcom/lge/mirrorlink/rtp/TmRTPServer$ServiceListener;,
        Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;,
        Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;,
        Lcom/lge/mirrorlink/rtp/TmRTPServer$1;,
        Lcom/lge/mirrorlink/rtp/TmRTPServer$2;,
        Lcom/lge/mirrorlink/rtp/TmRTPServer$3;
    }
.end annotation


# static fields
.field public static PAYLOAD_TYPE:I = 0x0

.field private static STATE:Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState; = null

.field private static final TAG:Ljava/lang/String; = "MirrorLink_RTP"

.field private static mPortAvailable:I

.field private static sRTPServer:Lcom/lge/mirrorlink/rtp/TmRTPServer;


# instance fields
.field private btACLReceiver:Landroid/content/BroadcastReceiver;

.field private btReceiver:Landroid/content/BroadcastReceiver;

.field clientIPAddress:Ljava/net/InetAddress;

.field private commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtConnection:Landroid/content/ServiceConnection;

.field private mBtListener:Lcom/lge/mirrorlink/rtp/TmRTPServer$ServiceListener;

.field private mBtService:Landroid/bluetooth/IBluetoothHeadset;

.field private mCtx:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field mIsRTPStarted:Z

.field mIsVolumeZero:Z

.field mRtpReader:Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;

.field mRtpReaderSocket:Ljava/net/DatagramSocket;

.field mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;


# direct methods
.method static synthetic -get0()Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;
    .registers 1

    sget-object v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->STATE:Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->btReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Lcom/lge/mirrorlink/rtp/TmRTPServer$ServiceListener;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtListener:Lcom/lge/mirrorlink/rtp/TmRTPServer$ServiceListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/lge/mirrorlink/rtp/TmRTPServer;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;
    .registers 2

    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtService:Landroid/bluetooth/IBluetoothHeadset;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/lge/mirrorlink/rtp/TmRTPServer;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p1, "mBtDev"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->connectBtHeadset(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    sget v0, Lcom/lge/mirrorlink/common/LaunchedComponent;->MIRRORLINK_RTP_DEFAULT_PORT:I

    sput v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->sRTPServer:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    .line 886
    const/4 v0, 0x7

    sput v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->PAYLOAD_TYPE:I

    .line 894
    sget-object v0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;->NotRunning:Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;

    sput-object v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->STATE:Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    .line 62
    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReader:Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;

    .line 63
    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->clientIPAddress:Ljava/net/InetAddress;

    .line 71
    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 77
    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .line 78
    iput-boolean v2, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mIsVolumeZero:Z

    .line 79
    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReaderSocket:Ljava/net/DatagramSocket;

    .line 80
    iput-boolean v2, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mIsRTPStarted:Z

    .line 637
    new-instance v1, Lcom/lge/mirrorlink/rtp/TmRTPServer$1;

    invoke-direct {v1, p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer$1;-><init>(Lcom/lge/mirrorlink/rtp/TmRTPServer;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtConnection:Landroid/content/ServiceConnection;

    .line 654
    new-instance v1, Lcom/lge/mirrorlink/rtp/TmRTPServer$2;

    invoke-direct {v1, p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer$2;-><init>(Lcom/lge/mirrorlink/rtp/TmRTPServer;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->btReceiver:Landroid/content/BroadcastReceiver;

    .line 676
    new-instance v1, Lcom/lge/mirrorlink/rtp/TmRTPServer$3;

    invoke-direct {v1, p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer$3;-><init>(Lcom/lge/mirrorlink/rtp/TmRTPServer;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->btACLReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    if-nez p1, :cond_35

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_35
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mCtx:Landroid/content/Context;

    .line 124
    new-instance v1, Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-direct {v1, p0}, Lcom/lge/mirrorlink/rtp/RTPWriter;-><init>(Lcom/lge/mirrorlink/rtp/TmRTPServer;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    .line 125
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .line 127
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_4e

    .line 128
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 130
    :cond_4e
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->btACLReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method private connectBtHeadset(Landroid/bluetooth/BluetoothDevice;)V
    .registers 11
    .param p1, "mBtDev"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 695
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "connectBtHeadset"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const/4 v8, 0x0

    .line 698
    .local v8, "rst":Z
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtService:Landroid/bluetooth/IBluetoothHeadset;

    if-nez v0, :cond_f

    .line 699
    return-void

    .line 703
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    .line 704
    .local v8, "rst":Z
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    if-eqz v0, :cond_2c

    .line 705
    invoke-virtual {p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getAudioConnectionInfo()Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;

    move-result-object v7

    .line 706
    .local v7, "info":Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    iget v1, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_out:I

    iget v2, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_in:I

    iget v3, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->voice_control:I

    iget v4, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->phone_audio:I

    iget-object v5, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->payload_types:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onAudioConnectionsChanged(IIIILjava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2c} :catch_38

    .line 713
    .end local v7    # "info":Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;
    :cond_2c
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_37

    .line 714
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 693
    :cond_37
    return-void

    .line 708
    .end local v8    # "rst":Z
    :catch_38
    move-exception v6

    .line 709
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "MirrorLink_RTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TmRTPServer : connectBtHeadset -> error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method private createMediaSource(I)Lcom/lge/mirrorlink/rtp/LiveCapture;
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 421
    const/4 v3, 0x0

    .line 422
    .local v3, "source":Lcom/lge/mirrorlink/rtp/LiveCapture;
    const v2, 0xbb80

    .line 423
    .local v2, "freq":I
    const/4 v1, 0x2

    .line 424
    .local v1, "channel":I
    const/16 v0, 0x10

    .line 426
    .local v0, "bitsPerSample":I
    const/4 v4, 0x5

    if-ne p1, v4, :cond_f

    .line 427
    const/16 v2, 0x1f40

    .line 428
    const/4 v1, 0x1

    .line 429
    const/16 v0, 0x8

    .line 431
    :cond_f
    new-instance v3, Lcom/lge/mirrorlink/rtp/LiveCapture;

    .end local v3    # "source":Lcom/lge/mirrorlink/rtp/LiveCapture;
    invoke-direct {v3, v2, v1, v0}, Lcom/lge/mirrorlink/rtp/LiveCapture;-><init>(III)V

    .line 432
    .local v3, "source":Lcom/lge/mirrorlink/rtp/LiveCapture;
    const-string/jumbo v4, "MirrorLink_RTP"

    const-string/jumbo v5, "RTP: start live capture."

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-object v3
.end method

.method private static getAvailablePort()I
    .registers 6

    .prologue
    .line 382
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 383
    .local v2, "rand":Ljava/util/Random;
    const/4 v0, 0x0

    .line 384
    .local v0, "availablePort":I
    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sget v4, Lcom/lge/mirrorlink/common/LaunchedComponent;->MIRRORLINK_RTP_DEFAULT_PORT:I

    add-int v1, v3, v4

    .line 385
    .local v1, "port":I
    move v0, v1

    .line 386
    const-string/jumbo v3, "MirrorLink_RTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAvailablePort() port : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return v0
.end method

.method public static getDefaultPort()I
    .registers 1

    .prologue
    .line 407
    sget v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I

    if-eqz v0, :cond_f

    sget v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I

    invoke-static {v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->isAvailablePort(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 411
    :goto_c
    sget v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I

    return v0

    .line 408
    :cond_f
    invoke-static {}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getAvailablePort()I

    move-result v0

    sput v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I

    goto :goto_c
.end method

.method public static declared-synchronized getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/rtp/TmRTPServer;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/lge/mirrorlink/rtp/TmRTPServer;

    monitor-enter v1

    .line 154
    :try_start_3
    sget-object v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->sRTPServer:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    if-nez v0, :cond_e

    .line 156
    new-instance v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->sRTPServer:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    .line 161
    :cond_e
    sget-object v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->sRTPServer:Lcom/lge/mirrorlink/rtp/TmRTPServer;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getHuBtBdAddr()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 744
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v3

    .line 745
    .local v3, "mTmClientProfile":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-nez v3, :cond_8

    .line 746
    return-object v4

    .line 749
    :cond_8
    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getBdAddr()Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "mBdAddr":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 751
    return-object v4

    .line 753
    :cond_f
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 754
    .local v1, "mFBA":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 755
    .local v2, "mIdx":I
    const/4 v2, 0x0

    :goto_16
    const/4 v4, 0x5

    if-ge v2, v4, :cond_27

    .line 756
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    const-string/jumbo v5, ":"

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 755
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 759
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getHuBtStartConnection()Z
    .registers 3

    .prologue
    .line 764
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v0

    .line 765
    .local v0, "mTmClientProfile":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-nez v0, :cond_8

    .line 766
    const/4 v1, 0x0

    return v1

    .line 769
    :cond_8
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getBtStartConnection()Z

    move-result v1

    return v1
.end method

.method public static declared-synchronized getRTPServer()Lcom/lge/mirrorlink/rtp/TmRTPServer;
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;

    monitor-enter v0

    .line 416
    :try_start_3
    sget-object v1, Lcom/lge/mirrorlink/rtp/TmRTPServer;->sRTPServer:Lcom/lge/mirrorlink/rtp/TmRTPServer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isAvailablePort(I)Z
    .registers 6
    .param p0, "port"    # I

    .prologue
    .line 393
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, p0}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 394
    .local v1, "socket":Ljava/net/DatagramSocket;
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 395
    const-string/jumbo v2, "MirrorLink_RTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAvailablePort port : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_22} :catch_24

    .line 396
    const/4 v2, 0x1

    return v2

    .line 397
    .end local v1    # "socket":Ljava/net/DatagramSocket;
    :catch_24
    move-exception v0

    .line 398
    .local v0, "e":Ljava/net/SocketException;
    const-string/jumbo v2, "MirrorLink_RTP"

    const-string/jumbo v3, "isAvailablePort() SocketException"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/Exception;)V

    .line 402
    const/4 v2, 0x0

    return v2
.end method

.method private stopRTPService()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 515
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "stopRTPService()"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-boolean v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mIsVolumeZero:Z

    if-eqz v0, :cond_28

    .line 518
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mCtx:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 519
    .local v6, "audioManager":Landroid/media/AudioManager;
    const/4 v0, 0x3

    invoke-virtual {v6, v0, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 520
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "setStreamVolume to zero"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iput-boolean v2, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mIsVolumeZero:Z

    .line 523
    .end local v6    # "audioManager":Landroid/media/AudioManager;
    :cond_28
    invoke-virtual {p0, v2}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->enableAudioCapture(Z)Z

    .line 524
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/rtp/RTPWriter;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 526
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "send broadcast msg com.lge.mirrorlink.audio.stopped"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.lge.mirrorlink.audio.stopped"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 529
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/rtp/RTPWriter;->stop()I

    .line 533
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4e
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    if-eqz v0, :cond_65

    .line 534
    invoke-virtual {p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getAudioConnectionInfo()Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;

    move-result-object v7

    .line 535
    .local v7, "info":Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    iget v1, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_out:I

    iget v2, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_in:I

    iget v3, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->voice_control:I

    iget v4, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->phone_audio:I

    iget-object v5, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->payload_types:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onAudioConnectionsChanged(IIIILjava/lang/String;)V

    .line 513
    .end local v7    # "info":Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;
    :cond_65
    return-void
.end method


# virtual methods
.method public GetBtA2DPConnected()Z
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 719
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_7

    .line 720
    return v1

    .line 722
    :cond_7
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 723
    const/4 v0, 0x1

    return v0

    .line 725
    :cond_11
    return v1
.end method

.method public GetBtHfpConnected()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 732
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_7

    .line 733
    return v2

    .line 735
    :cond_7
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 736
    return v3

    .line 738
    :cond_11
    return v2
.end method

.method public declared-synchronized changeState(Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;)V
    .registers 3
    .param p1, "state"    # Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;

    .prologue
    monitor-enter p0

    .line 897
    :try_start_1
    sget-object v0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->STATE:Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;

    if-eq v0, p1, :cond_a

    .line 898
    sput-object p1, Lcom/lge/mirrorlink/rtp/TmRTPServer;->STATE:Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;

    .line 899
    invoke-virtual {p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->updateNotification()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    .line 895
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableAudioCapture(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 439
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/RTPWriter;->isAudioCapturing()Z

    move-result v0

    .line 441
    .local v0, "isCapturingNow":Z
    if-ne v0, p1, :cond_a

    .line 442
    return v2

    .line 445
    :cond_a
    if-eqz p1, :cond_15

    .line 446
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/RTPWriter;->enableAudioCapture()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 447
    return v2

    .line 450
    :cond_15
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/RTPWriter;->disableAudioCapture()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 451
    return v2

    .line 454
    :cond_1e
    return v2
.end method

.method public enableAudioStream(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 551
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/RTPWriter;->isAudioCapturing()Z

    move-result v0

    .line 553
    .local v0, "isCapturingNow":Z
    if-ne v0, p1, :cond_a

    .line 554
    return v2

    .line 557
    :cond_a
    if-eqz p1, :cond_15

    .line 558
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/RTPWriter;->enableAudioCapture()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 559
    return v2

    .line 562
    :cond_15
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/RTPWriter;->disableAudioCapture()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 563
    return v2

    .line 566
    :cond_1e
    return v2
.end method

.method public getAudioConnectionInfo()Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 92
    new-instance v0, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;-><init>(Lcom/lge/mirrorlink/rtp/TmRTPServer;)V

    .line 93
    .local v0, "data":Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;
    iput v1, v0, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_out:I

    .line 94
    iput v1, v0, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_in:I

    .line 95
    iput v1, v0, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->voice_control:I

    .line 96
    iput v1, v0, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->phone_audio:I

    .line 97
    sget-object v1, Lcom/lge/mirrorlink/MirrorLinkConfig;->RTP_PAYLOAD_TYPES:Ljava/util/List;

    const-string/jumbo v2, "%d"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->payload_types:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->GetBtHfpConnected()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 99
    iput v3, v0, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->voice_control:I

    .line 100
    iput v3, v0, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->phone_audio:I

    .line 102
    :cond_24
    invoke-virtual {p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->GetBtA2DPConnected()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 103
    iput v3, v0, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_out:I

    .line 107
    :cond_2c
    :goto_2c
    return-object v0

    .line 104
    :cond_2d
    invoke-virtual {p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->isenableAudioStream()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 105
    const/4 v1, 0x2

    iput v1, v0, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_out:I

    goto :goto_2c
.end method

.method public getBindedPort()I
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReader:Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;

    if-eqz v0, :cond_b

    .line 257
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReader:Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->getPort()I

    move-result v0

    return v0

    .line 259
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isAudioActive()Z
    .registers 3

    .prologue
    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "retValue":Z
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_b

    .line 573
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 575
    .end local v0    # "retValue":Z
    :cond_b
    return v0
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    if-eqz v0, :cond_b

    .line 233
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/rtp/RTPWriter;->isStarted()Z

    move-result v0

    return v0

    .line 235
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isenableAudioStream()Z
    .registers 3

    .prologue
    .line 579
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/RTPWriter;->isAudioCapturing()Z

    move-result v0

    .line 580
    .local v0, "isCapturingNow":Z
    return v0
.end method

.method public notifyClosed()V
    .registers 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReader:Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;

    invoke-static {v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->-get0(Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 905
    sget-object v0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;->Waiting:Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->changeState(Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;)V

    .line 902
    :goto_11
    return-void

    .line 907
    :cond_12
    sget-object v0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;->NotRunning:Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->changeState(Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;)V

    goto :goto_11
.end method

.method public startRTPService(Ljava/lang/String;II)I
    .registers 18
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "type"    # I

    .prologue
    .line 459
    const-string/jumbo v1, "MirrorLink_RTP"

    const-string/jumbo v2, "startRTPService()"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/RTPWriter;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 461
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/RTPWriter;->getClientIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/RTPWriter;->getPort()I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_29

    .line 462
    const/4 v1, 0x0

    return v1

    .line 464
    :cond_29
    invoke-direct {p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->stopRTPService()V

    .line 467
    :cond_2c
    const-string/jumbo v1, "MirrorLink_RTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RTPService : startRTPService -> ip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "(payload type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    move/from16 v11, p3

    .line 469
    .local v11, "position":I
    invoke-direct {p0, v11}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->createMediaSource(I)Lcom/lge/mirrorlink/rtp/LiveCapture;

    move-result-object v13

    .line 470
    .local v13, "source":Lcom/lge/mirrorlink/rtp/LiveCapture;
    if-nez v13, :cond_96

    .line 471
    const-string/jumbo v1, "MirrorLink_RTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RTPService.startRTPService(): cannot create LiveCapture with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string/jumbo v1, "MirrorLink_RTP"

    const-string/jumbo v2, "RTPService.startRTPService(): stop RTP service."

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v1, 0x0

    return v1

    .line 475
    :cond_96
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1, p1}, Lcom/lge/mirrorlink/rtp/RTPWriter;->setClientIP(Ljava/lang/String;)I

    .line 476
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    iget-object v2, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->clientIPAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/rtp/RTPWriter;->setClientIPAddr(Ljava/net/InetAddress;)I

    .line 477
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/lge/mirrorlink/rtp/RTPWriter;->setPort(I)I

    .line 478
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1, v13}, Lcom/lge/mirrorlink/rtp/RTPWriter;->addSource(Lcom/lge/mirrorlink/rtp/LiveCapture;)I

    .line 479
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReader:Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->getServerSocket()Ljava/net/DatagramSocket;

    move-result-object v10

    .line 480
    .local v10, "mServerSocket":Ljava/net/DatagramSocket;
    if-eqz v10, :cond_bb

    .line 481
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1, v10}, Lcom/lge/mirrorlink/rtp/RTPWriter;->setSocket(Ljava/net/DatagramSocket;)I

    .line 484
    :cond_bb
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mIsVolumeZero:Z

    .line 485
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mCtx:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mAudioManager:Landroid/media/AudioManager;

    .line 486
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 488
    .local v7, "currentVolume":I
    if-nez v7, :cond_e8

    .line 489
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mIsVolumeZero:Z

    .line 491
    const-string/jumbo v1, "MirrorLink_RTP"

    const-string/jumbo v2, "setStreamVolume to 1"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 497
    :cond_e8
    const-string/jumbo v1, "MirrorLink_RTP"

    const-string/jumbo v2, "send broadcast msg com.lge.mirrorlink.audio.started"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v1, "com.lge.mirrorlink.audio.started"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .local v9, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 501
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->enableAudioCapture(Z)Z

    .line 502
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpWriter:Lcom/lge/mirrorlink/rtp/RTPWriter;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/RTPWriter;->start()I

    move-result v12

    .line 506
    .local v12, "result":I
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    if-eqz v1, :cond_11f

    .line 507
    invoke-virtual {p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getAudioConnectionInfo()Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;

    move-result-object v8

    .line 508
    .local v8, "info":Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    iget v2, v8, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_out:I

    iget v3, v8, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_in:I

    iget v4, v8, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->voice_control:I

    iget v5, v8, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->phone_audio:I

    iget-object v6, v8, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->payload_types:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onAudioConnectionsChanged(IIIILjava/lang/String;)V

    .line 510
    .end local v8    # "info":Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;
    :cond_11f
    return v12
.end method

.method public startRtpReaderSocket(I)Ljava/net/DatagramSocket;
    .registers 6
    .param p1, "port"    # I

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 329
    .local v1, "socket":Ljava/net/DatagramSocket;
    :try_start_1
    new-instance v1, Ljava/net/DatagramSocket;

    .end local v1    # "socket":Ljava/net/DatagramSocket;
    invoke-direct {v1, p1}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_6} :catch_7

    .line 334
    .local v1, "socket":Ljava/net/DatagramSocket;
    return-object v1

    .line 330
    .end local v1    # "socket":Ljava/net/DatagramSocket;
    :catch_7
    move-exception v0

    .line 331
    .local v0, "e":Ljava/net/SocketException;
    const-string/jumbo v2, "MirrorLink_RTP"

    const-string/jumbo v3, "SocketException startRtpReaderSocket()"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v2, 0x0

    return-object v2
.end method

.method public declared-synchronized startServer(Ljava/lang/Integer;)I
    .registers 9
    .param p1, "payloadtype"    # Ljava/lang/Integer;

    .prologue
    monitor-enter p0

    .line 269
    :try_start_1
    iget-boolean v3, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mIsRTPStarted:Z

    if-eqz v3, :cond_25

    .line 270
    const-string/jumbo v3, "MirrorLink_RTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MirrorLink_RTP.handleStart: already started RTP host. port : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget v3, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_f8

    monitor-exit p0

    return v3

    .line 275
    :cond_25
    const/4 v2, 0x7

    .line 276
    .local v2, "payload":I
    if-eqz p1, :cond_31

    .line 277
    :try_start_28
    sget-object v3, Lcom/lge/mirrorlink/common/MirrorLinkDataDef;->payloadtype_0:Ljava/lang/Integer;

    invoke-virtual {p1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 278
    const/4 v2, 0x5

    .line 283
    :cond_31
    :goto_31
    sput v2, Lcom/lge/mirrorlink/rtp/TmRTPServer;->PAYLOAD_TYPE:I

    .line 287
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mIsRTPStarted:Z

    .line 289
    iget-object v3, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mCtx:Landroid/content/Context;

    if-eqz v3, :cond_ed

    iget-object v3, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mCtx:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mBtConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 305
    :goto_57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_58
    const/16 v3, 0xa

    if-ge v1, v3, :cond_6e

    .line 306
    invoke-static {}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getAvailablePort()I

    move-result v3

    sput v3, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I

    .line 307
    sget v3, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I

    invoke-virtual {p0, v3}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->startRtpReaderSocket(I)Ljava/net/DatagramSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReaderSocket:Ljava/net/DatagramSocket;

    .line 308
    iget-object v3, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReaderSocket:Ljava/net/DatagramSocket;

    if-eqz v3, :cond_fb

    .line 312
    :cond_6e
    const-string/jumbo v3, "MirrorLink_RTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RTPServer: bind port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v3, "MirrorLink_RTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RTP: Start new RTP mRtpReader. listeningPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v3, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;

    sget v4, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I

    invoke-direct {v3, p0, v4}, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;-><init>(Lcom/lge/mirrorlink/rtp/TmRTPServer;I)V

    iput-object v3, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReader:Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;

    .line 315
    iget-object v3, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReader:Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RTP listening: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->setName(Ljava/lang/String;)V

    .line 316
    iget-object v3, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReader:Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->start()V

    .line 320
    invoke-static {}, Lcom/lge/mirrorlink/common/LaunchedComponent;->getInstance()Lcom/lge/mirrorlink/common/LaunchedComponent;

    move-result-object v0

    .line 321
    .local v0, "TmComURLs":Lcom/lge/mirrorlink/common/LaunchedComponent;
    const-string/jumbo v3, "TerminalMode:RTP-Server"

    const-string/jumbo v4, "RTP"

    sget v5, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/lge/mirrorlink/common/LaunchedComponent;->putCompInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    sget v3, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mPortAvailable:I
    :try_end_e0
    .catchall {:try_start_28 .. :try_end_e0} :catchall_f8

    monitor-exit p0

    return v3

    .line 279
    .end local v0    # "TmComURLs":Lcom/lge/mirrorlink/common/LaunchedComponent;
    .end local v1    # "i":I
    :cond_e2
    :try_start_e2
    sget-object v3, Lcom/lge/mirrorlink/common/MirrorLinkDataDef;->payloadtype_99:Ljava/lang/Integer;

    invoke-virtual {p1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 280
    const/4 v2, 0x7

    goto/16 :goto_31

    .line 290
    :cond_ed
    const-string/jumbo v3, "MirrorLink_RTP"

    const-string/jumbo v4, "TmRTPServer : StartServer -> Could not bind to Bluetooth Headset Service"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f6
    .catchall {:try_start_e2 .. :try_end_f6} :catchall_f8

    goto/16 :goto_57

    .end local v2    # "payload":I
    :catchall_f8
    move-exception v3

    monitor-exit p0

    throw v3

    .line 305
    .restart local v1    # "i":I
    .restart local v2    # "payload":I
    :cond_fb
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_58
.end method

.method public declared-synchronized stopServer()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 357
    :try_start_1
    invoke-direct {p0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->stopRTPService()V

    .line 358
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReader:Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;

    if-eqz v1, :cond_16

    .line 359
    const-string/jumbo v1, "MirrorLink_RTP"

    const-string/jumbo v2, "RTP: Stop RTP listening mRtpReader."

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReader:Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->abort()V

    .line 363
    :cond_16
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReaderSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_22

    .line 364
    iget-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReaderSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReaderSocket:Ljava/net/DatagramSocket;

    .line 367
    :cond_22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mIsRTPStarted:Z

    .line 369
    invoke-static {}, Lcom/lge/mirrorlink/common/LaunchedComponent;->getInstance()Lcom/lge/mirrorlink/common/LaunchedComponent;

    move-result-object v0

    .line 370
    .local v0, "TmComURLs":Lcom/lge/mirrorlink/common/LaunchedComponent;
    const-string/jumbo v1, "TerminalMode:RTP-Server"

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/common/LaunchedComponent;->removeCompInfo(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    monitor-exit p0

    .line 342
    return-void

    .end local v0    # "TmComURLs":Lcom/lge/mirrorlink/common/LaunchedComponent;
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateNotification()V
    .registers 1

    .prologue
    .line 887
    return-void
.end method
