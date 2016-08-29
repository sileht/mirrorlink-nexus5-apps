.class public Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;
.super Ljava/lang/Thread;
.source "TmRTPServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/rtp/TmRTPServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RTPReader"
.end annotation


# instance fields
.field private listenPort:I

.field private listeningFlag:Z

.field private serverIP:Ljava/net/InetAddress;

.field private socket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;)Ljava/net/DatagramSocket;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->socket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public constructor <init>(Lcom/lge/mirrorlink/rtp/TmRTPServer;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/mirrorlink/rtp/TmRTPServer;
    .param p2, "listenPort"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 785
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 780
    iput-boolean v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listeningFlag:Z

    .line 781
    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->socket:Ljava/net/DatagramSocket;

    .line 782
    iput v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listenPort:I

    .line 783
    iput-object v1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->serverIP:Ljava/net/InetAddress;

    .line 787
    iput p2, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listenPort:I

    .line 785
    return-void
.end method

.method private openDatagramSocket(Ljava/net/InetAddress;I)Ljava/net/DatagramSocket;
    .registers 6
    .param p1, "serverIP"    # Ljava/net/InetAddress;
    .param p2, "listenPort"    # I

    .prologue
    const/4 v2, 0x0

    .line 810
    const/4 v1, 0x0

    .line 812
    .local v1, "socket":Ljava/net/DatagramSocket;
    if-eqz p1, :cond_a

    .line 813
    :try_start_4
    new-instance v1, Ljava/net/DatagramSocket;

    .end local v1    # "socket":Ljava/net/DatagramSocket;
    invoke-direct {v1, p2, p1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 820
    .local v1, "socket":Ljava/net/DatagramSocket;
    :goto_9
    return-object v1

    .line 815
    .local v1, "socket":Ljava/net/DatagramSocket;
    :cond_a
    new-instance v1, Ljava/net/DatagramSocket;

    .end local v1    # "socket":Ljava/net/DatagramSocket;
    invoke-direct {v1, p2}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_f} :catch_10

    .local v1, "socket":Ljava/net/DatagramSocket;
    goto :goto_9

    .line 817
    .end local v1    # "socket":Ljava/net/DatagramSocket;
    :catch_10
    move-exception v0

    .line 818
    .local v0, "e":Ljava/net/SocketException;
    return-object v2
.end method


# virtual methods
.method public abort()V
    .registers 3

    .prologue
    .line 870
    iget-boolean v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listeningFlag:Z

    if-nez v0, :cond_e

    .line 871
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "RTP: RTP server didn\'t started yet."

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    return-void

    .line 874
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listeningFlag:Z

    .line 875
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_23

    .line 876
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "RTP: close 1byte UDP socket listening port."

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 868
    :cond_23
    return-void
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listeningFlag:Z

    if-eqz v0, :cond_7

    .line 793
    iget v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listenPort:I

    return v0

    .line 795
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public getServerSocket()Ljava/net/DatagramSocket;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 801
    iget-boolean v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listeningFlag:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_c

    .line 802
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->socket:Ljava/net/DatagramSocket;

    return-object v0

    .line 804
    :cond_c
    return-object v1
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 825
    iget-boolean v5, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listeningFlag:Z

    if-eqz v5, :cond_f

    .line 826
    const-string/jumbo v5, "MirrorLink_RTP"

    const-string/jumbo v6, "RTP: RTP server already started."

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    return-void

    .line 829
    :cond_f
    const-string/jumbo v5, "MirrorLink_RTP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RTP: start UDP packet listen on port("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listenPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listeningFlag:Z

    .line 832
    iget-object v5, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    iget-object v5, v5, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mRtpReaderSocket:Ljava/net/DatagramSocket;

    iput-object v5, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->socket:Ljava/net/DatagramSocket;

    .line 835
    iget-object v5, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->socket:Ljava/net/DatagramSocket;

    if-nez v5, :cond_4b

    .line 836
    const-string/jumbo v5, "MirrorLink_RTP"

    const-string/jumbo v6, "RTP: socket exception occurred. (already binded)"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iput-boolean v8, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listeningFlag:Z

    .line 838
    return-void

    .line 841
    :cond_4b
    const/16 v5, 0x10

    new-array v3, v5, [B

    .line 842
    .local v3, "inbuf":[B
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, v3

    invoke-direct {v4, v3, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 843
    .local v4, "packet":Ljava/net/DatagramPacket;
    iget-object v5, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    sget-object v6, Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;->Waiting:Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;

    invoke-virtual {v5, v6}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->changeState(Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;)V

    .line 844
    :cond_5c
    :goto_5c
    iget-boolean v5, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listeningFlag:Z

    if-eqz v5, :cond_e5

    .line 846
    :try_start_60
    iget-object v5, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 847
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "clientIP":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    iput-object v6, v5, Lcom/lge/mirrorlink/rtp/TmRTPServer;->clientIPAddress:Ljava/net/InetAddress;

    .line 849
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    .line 850
    .local v1, "clientPort":I
    invoke-static {}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-get0()Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;

    move-result-object v5

    sget-object v6, Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;->Waiting:Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;

    if-ne v5, v6, :cond_5c

    .line 851
    iget-object v5, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    sget v6, Lcom/lge/mirrorlink/rtp/TmRTPServer;->PAYLOAD_TYPE:I

    invoke-virtual {v5, v0, v1, v6}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->startRTPService(Ljava/lang/String;II)I

    .line 852
    const-string/jumbo v5, "MirrorLink_RTP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RTP: 1 Byte received from RTP Client -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/lge/mirrorlink/rtp/TmRTPServer;->PAYLOAD_TYPE:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_c1} :catch_c2

    goto :goto_5c

    .line 854
    .end local v0    # "clientIP":Ljava/lang/String;
    .end local v1    # "clientPort":I
    :catch_c2
    move-exception v2

    .line 855
    .local v2, "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listeningFlag:Z

    if-nez v5, :cond_ed

    .line 856
    const-string/jumbo v5, "MirrorLink_RTP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RTP: stop listening on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listenPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :goto_e3
    iput-boolean v8, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->listeningFlag:Z

    .line 865
    .end local v2    # "e":Ljava/io/IOException;
    :cond_e5
    iget-object v5, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$RTPReader;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    sget-object v6, Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;->NotRunning:Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;

    invoke-virtual {v5, v6}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->changeState(Lcom/lge/mirrorlink/rtp/TmRTPServer$RtpState;)V

    .line 823
    return-void

    .line 858
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_ed
    const-string/jumbo v5, "MirrorLink_RTP"

    const-string/jumbo v6, "RTP: error while receiving packet."

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-static {v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/Exception;)V

    goto :goto_e3
.end method
