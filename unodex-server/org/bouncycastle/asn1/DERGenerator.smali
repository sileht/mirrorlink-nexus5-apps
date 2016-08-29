.class public abstract Lorg/bouncycastle/asn1/DERGenerator;
.super Lorg/bouncycastle/asn1/ASN1Generator;
.source "Unknown"


# instance fields
.field private _isExplicit:Z

.field private _tagNo:I

.field private _tagged:Z


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/DERGenerator;->_isExplicit:Z

    iput p2, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagNo:I

    return-void
.end method

.method private writeLength(Ljava/io/OutputStream;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_9

    int-to-byte v0, p2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x1

    move v1, v0

    move v0, p2

    :goto_c
    ushr-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_25

    or-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v1, -0x1

    mul-int/lit8 v0, v0, 0x8

    :goto_1a
    if-ltz v0, :cond_8

    shr-int v1, p2, v0

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, -0x8

    goto :goto_1a

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method


# virtual methods
.method writeDEREncoded(I[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagNo:I

    or-int/lit16 v0, v0, 0x80

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/DERGenerator;->_isExplicit:Z

    if-nez v1, :cond_1c

    and-int/lit8 v1, p1, 0x20

    if-nez v1, :cond_34

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, v1, v0, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_9

    :cond_1c
    iget v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagNo:I

    or-int/lit8 v0, v0, 0x20

    or-int/lit16 v0, v0, 0x80

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v1, p1, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/DERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_9

    :cond_34
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERGenerator;->_out:Ljava/io/OutputStream;

    or-int/lit8 v0, v0, 0x20

    invoke-virtual {p0, v1, v0, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_9
.end method

.method writeDEREncoded(Ljava/io/OutputStream;ILjava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    return-void
.end method

.method writeDEREncoded(Ljava/io/OutputStream;I[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    array-length v0, p3

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/DERGenerator;->writeLength(Ljava/io/OutputStream;I)V

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
