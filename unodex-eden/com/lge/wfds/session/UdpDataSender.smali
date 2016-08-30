.class public Lcom/lge/wfds/session/UdpDataSender;
.super Ljava/lang/Object;
.source "UdpDataSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/session/UdpDataSender$UdpClient;
    }
.end annotation


# static fields
.field private static final COORDINATION_VERSION:I = 0x0

.field static final REQ_BUFF_MAX_SIZE:I = 0x200

.field static final SESSION_MAC_SIZE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "WfdsSession:SEND"

.field private static final VENDOR_INFORMATION:Ljava/lang/String; = "LG Electronics Inc."

.field static mRequestByteArray:[B


# instance fields
.field mServerIpAddress:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wfds/session/UdpDataSender;->mRequestByteArray:[B

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/session/UdpDataSender;->mServerIpAddress:Ljava/net/InetAddress;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wfds/session/UdpDataSender;[B)V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/lge/wfds/session/UdpDataSender;->sendDataPacket([B)V

    return-void
.end method

.method public static macToByteArray(Ljava/lang/String;)[B
    .registers 9
    .param p0, "macAddress"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x6

    .line 97
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "macAddressParts":[Ljava/lang/String;
    new-array v3, v7, [B

    .line 100
    .local v3, "macAddressBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-lt v2, v7, :cond_d

    .line 109
    .end local v3    # "macAddressBytes":[B
    :goto_c
    return-object v3

    .line 102
    .restart local v3    # "macAddressBytes":[B
    :cond_d
    :try_start_d
    aget-object v5, v4, v2

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 103
    .local v1, "hex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    aput-byte v5, v3, v2
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1f} :catch_22

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 104
    .end local v1    # "hex":Ljava/lang/Integer;
    :catch_22
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "WfdsSession:SEND"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot convert: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v3, 0x0

    goto :goto_c
.end method

.method public static requestBuilder(IILcom/lge/wfds/session/AspSession;)[B
    .registers 9
    .param p0, "type"    # I
    .param p1, "seq"    # I
    .param p2, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    const/4 v3, 0x0

    .line 141
    if-nez p2, :cond_4

    .line 200
    :cond_3
    :goto_3
    return-object v3

    .line 145
    :cond_4
    const/16 v4, 0x200

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 146
    .local v0, "buff":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 147
    int-to-byte v4, p0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 148
    int-to-byte v4, p1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 150
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/wfds/session/UdpDataSender;->macToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 151
    .local v2, "session_mac_byte_array":[B
    if-eqz v2, :cond_3

    .line 155
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 156
    iget v4, p2, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 158
    packed-switch p0, :pswitch_data_9e

    .line 196
    :cond_2a
    :goto_2a
    :pswitch_2a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 197
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    new-array v3, v4, [B

    .line 198
    .local v3, "t":[B
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 161
    .end local v3    # "t":[B
    :pswitch_37
    iget v4, p2, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 162
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    if-eqz v4, :cond_2a

    .line 163
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 164
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2a

    .line 173
    :pswitch_54
    iget v4, p2, Lcom/lge/wfds/session/AspSession;->reason:I

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2a

    .line 176
    :pswitch_5b
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    if-eqz v4, :cond_2a

    .line 177
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7d

    .line 178
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/session/AspServicePort;

    .line 179
    .local v1, "port_":Lcom/lge/wfds/session/AspServicePort;
    iget v4, v1, Lcom/lge/wfds/session/AspServicePort;->port:I

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 180
    iget v4, v1, Lcom/lge/wfds/session/AspServicePort;->proto:I

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2a

    .line 182
    .end local v1    # "port_":Lcom/lge/wfds/session/AspServicePort;
    :cond_7d
    const-string v4, "WfdsSession:SEND"

    const-string v5, "ALLOWED_PORT : ports.size() is 0 !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 187
    :pswitch_85
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    if-eqz v4, :cond_2a

    .line 188
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 189
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2a

    .line 158
    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_37
        :pswitch_2a
        :pswitch_2a
        :pswitch_54
        :pswitch_5b
        :pswitch_2a
        :pswitch_85
    .end packed-switch
.end method

.method public static requestBuilderAck(III)[B
    .registers 6
    .param p0, "type"    # I
    .param p1, "seq"    # I
    .param p2, "reason"    # I

    .prologue
    .line 127
    const/16 v2, 0x200

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 128
    .local v0, "buff":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 129
    int-to-byte v2, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 130
    int-to-byte v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 131
    const/16 v2, 0xff

    if-ne p0, v2, :cond_1b

    .line 132
    int-to-byte v2, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 134
    :cond_1b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 135
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 136
    .local v1, "t":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 137
    return-object v1
.end method

.method public static requestBuilderVersion(IIILjava/lang/String;)[B
    .registers 7
    .param p0, "type"    # I
    .param p1, "seq"    # I
    .param p2, "version"    # I
    .param p3, "vendor_information"    # Ljava/lang/String;

    .prologue
    .line 113
    const/16 v2, 0x200

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 114
    .local v0, "buff":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 115
    int-to-byte v2, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 116
    int-to-byte v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 117
    int-to-byte v2, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 122
    .local v1, "t":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 123
    return-object v1
.end method

.method private send([B)V
    .registers 6
    .param p1, "msg"    # [B

    .prologue
    .line 204
    new-instance v0, Lcom/lge/wfds/session/UdpDataSender$UdpClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/wfds/session/UdpDataSender$UdpClient;-><init>(Lcom/lge/wfds/session/UdpDataSender;Lcom/lge/wfds/session/UdpDataSender$UdpClient;)V

    .line 206
    .local v0, "udpClient":Lcom/lge/wfds/session/UdpDataSender$UdpClient;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lge/wfds/session/UdpDataSender$UdpClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    return-void
.end method

.method private sendDataPacket([B)V
    .registers 10
    .param p1, "msg"    # [B

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, "socket":Ljava/net/DatagramSocket;
    iget-object v5, p0, Lcom/lge/wfds/session/UdpDataSender;->mServerIpAddress:Ljava/net/InetAddress;

    if-nez v5, :cond_6

    .line 91
    :goto_5
    return-void

    .line 66
    :cond_6
    :try_start_6
    new-instance v4, Ljava/net/DatagramSocket;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_c} :catch_67
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_71

    .line 67
    .end local v3    # "socket":Ljava/net/DatagramSocket;
    .local v4, "socket":Ljava/net/DatagramSocket;
    const/4 v5, 0x1

    :try_start_d
    invoke-virtual {v4, v5}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 75
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/net/DatagramSocket;->setTrafficClass(I)V

    .line 76
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v5, 0x1c43

    invoke-direct {v0, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 77
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v4, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 78
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v5, p1

    iget-object v6, p0, Lcom/lge/wfds/session/UdpDataSender;->mServerIpAddress:Ljava/net/InetAddress;

    const/16 v7, 0x1c43

    invoke-direct {v1, p1, v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 79
    .local v1, "data":Ljava/net/DatagramPacket;
    invoke-virtual {v4, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 80
    const-string v5, "WfdsSession:SEND"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SEND: Dst IP("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 81
    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Dst Port("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V
    :try_end_65
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_65} :catch_7c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_65} :catch_79
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_65} :catch_76

    move-object v3, v4

    .line 84
    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v3    # "socket":Ljava/net/DatagramSocket;
    goto :goto_5

    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v1    # "data":Ljava/net/DatagramPacket;
    :catch_67
    move-exception v2

    .line 85
    .local v2, "e":Ljava/net/SocketException;
    :goto_68
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_5

    .line 86
    .end local v2    # "e":Ljava/net/SocketException;
    :catch_6c
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/IOException;
    :goto_6d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 88
    .end local v2    # "e":Ljava/io/IOException;
    :catch_71
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    :goto_72
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 88
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "socket":Ljava/net/DatagramSocket;
    .restart local v4    # "socket":Ljava/net/DatagramSocket;
    :catch_76
    move-exception v2

    move-object v3, v4

    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v3    # "socket":Ljava/net/DatagramSocket;
    goto :goto_72

    .line 86
    .end local v3    # "socket":Ljava/net/DatagramSocket;
    .restart local v4    # "socket":Ljava/net/DatagramSocket;
    :catch_79
    move-exception v2

    move-object v3, v4

    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v3    # "socket":Ljava/net/DatagramSocket;
    goto :goto_6d

    .line 84
    .end local v3    # "socket":Ljava/net/DatagramSocket;
    .restart local v4    # "socket":Ljava/net/DatagramSocket;
    :catch_7c
    move-exception v2

    move-object v3, v4

    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v3    # "socket":Ljava/net/DatagramSocket;
    goto :goto_68
.end method


# virtual methods
.method public sendRequest(IILcom/lge/wfds/session/AspSession;Ljava/lang/String;)V
    .registers 8
    .param p1, "req_type"    # I
    .param p2, "seq"    # I
    .param p3, "session"    # Lcom/lge/wfds/session/AspSession;
    .param p4, "ip_address"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "WfdsSession:SEND"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendRequest :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->getReqTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    const-string v2, ", To:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/session/UdpDataSender;->mServerIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x5

    if-eq p1, v0, :cond_76

    .line 47
    invoke-static {p1, p2, p3}, Lcom/lge/wfds/session/UdpDataSender;->requestBuilder(IILcom/lge/wfds/session/AspSession;)[B

    move-result-object v0

    sput-object v0, Lcom/lge/wfds/session/UdpDataSender;->mRequestByteArray:[B

    .line 52
    :goto_4b
    if-eqz p4, :cond_70

    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataSender;->mServerIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 53
    invoke-virtual {p0, p4}, Lcom/lge/wfds/session/UdpDataSender;->setTargetIpAddress(Ljava/lang/String;)V

    .line 54
    const-string v0, "WfdsSession:SEND"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Target ip address is changed to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_70
    sget-object v0, Lcom/lge/wfds/session/UdpDataSender;->mRequestByteArray:[B

    invoke-direct {p0, v0}, Lcom/lge/wfds/session/UdpDataSender;->send([B)V

    .line 57
    return-void

    .line 50
    :cond_76
    const/4 v0, 0x0

    const-string v1, "LG Electronics Inc."

    .line 49
    invoke-static {p1, p2, v0, v1}, Lcom/lge/wfds/session/UdpDataSender;->requestBuilderVersion(IIILjava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/lge/wfds/session/UdpDataSender;->mRequestByteArray:[B

    goto :goto_4b
.end method

.method public setTargetIpAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wfds/session/UdpDataSender;->mServerIpAddress:Ljava/net/InetAddress;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_c

    .line 41
    :goto_6
    return-void

    .line 36
    :catch_7
    move-exception v0

    .line 37
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_6

    .line 38
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_c
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method
