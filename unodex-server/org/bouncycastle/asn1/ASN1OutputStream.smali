.class public Lorg/bouncycastle/asn1/ASN1OutputStream;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;
    }
.end annotation


# instance fields
.field private os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

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

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method getDERSubStream()Lorg/bouncycastle/asn1/ASN1OutputStream;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method getDLSubStream()Lorg/bouncycastle/asn1/ASN1OutputStream;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/DLOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method write([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method writeEncoded(II[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    array-length v0, p3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    invoke-virtual {p0, p3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([B)V

    return-void
.end method

.method writeEncoded(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    array-length v0, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([B)V

    return-void
.end method

.method writeImplicitObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_b

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;-><init>(Lorg/bouncycastle/asn1/ASN1OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V

    return-void
.end method

.method writeLength(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_9

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x1

    move v1, v0

    move v0, p1

    :goto_c
    ushr-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_25

    or-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    add-int/lit8 v0, v1, -0x1

    mul-int/lit8 v0, v0, 0x8

    :goto_1a
    if-ltz v0, :cond_8

    shr-int v1, p1, v0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    add-int/lit8 v0, v0, -0x8

    goto :goto_1a

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method protected writeNull()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_b

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V

    return-void
.end method

.method writeTag(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_2f

    or-int/lit8 v0, p1, 0x1f

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    const/16 v0, 0x80

    if-lt p2, v0, :cond_35

    const/4 v0, 0x5

    new-array v1, v0, [B

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_19
    shr-int/lit8 p2, p2, 0x7

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v2, 0x7f

    if-gt p2, v2, :cond_19

    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    :goto_2e
    return-void

    :cond_2f
    or-int v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_2e

    :cond_35
    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_2e
.end method