.class Lorg/bouncycastle/crypto/tls/TlsInputStream;
.super Ljava/io/InputStream;
.source "Unknown"


# instance fields
.field private buf:[B

.field private handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsInputStream;->buf:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsInputStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsInputStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsInputStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->close()V

    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsInputStream;->buf:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsInputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_10

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsInputStream;->buf:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsInputStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readApplicationData([BII)I

    move-result v0

    return v0
.end method
