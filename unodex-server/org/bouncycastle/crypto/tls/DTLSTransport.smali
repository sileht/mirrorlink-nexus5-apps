.class public Lorg/bouncycastle/crypto/tls/DTLSTransport;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/DatagramTransport;


# instance fields
.field private final recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->close()V

    return-void
.end method

.method public getReceiveLimit()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getReceiveLimit()I

    move-result v0

    return v0
.end method

.method public getSendLimit()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getSendLimit()I

    move-result v0

    return v0
.end method

.method public receive([BIII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x50

    :try_start_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->receive([BIII)I
    :try_end_7
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_2 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_7} :catch_1b

    move-result v0

    return v0

    :catch_9
    move-exception v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw v0

    :catch_14
    move-exception v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw v0

    :catch_1b
    move-exception v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public send([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x50

    :try_start_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->send([BII)V
    :try_end_7
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_2 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_7} :catch_1a

    return-void

    :catch_8
    move-exception v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw v0

    :catch_13
    move-exception v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw v0

    :catch_1a
    move-exception v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
