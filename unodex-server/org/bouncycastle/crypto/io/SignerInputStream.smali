.class public Lorg/bouncycastle/crypto/io/SignerInputStream;
.super Ljava/io/FilterInputStream;
.source "Unknown"


# instance fields
.field protected signer:Lorg/bouncycastle/crypto/Signer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/Signer;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lorg/bouncycastle/crypto/Signer;

    return-void
.end method


# virtual methods
.method public getSigner()Lorg/bouncycastle/crypto/Signer;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lorg/bouncycastle/crypto/Signer;

    return-object v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_9

    :goto_8
    return v0

    :cond_9
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lorg/bouncycastle/crypto/Signer;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Signer;->update(B)V

    goto :goto_8
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_9

    :goto_8
    return v0

    :cond_9
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lorg/bouncycastle/crypto/Signer;

    invoke-interface {v1, p1, p2, v0}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    goto :goto_8
.end method
