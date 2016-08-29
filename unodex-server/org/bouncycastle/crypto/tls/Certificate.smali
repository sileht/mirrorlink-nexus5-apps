.class public Lorg/bouncycastle/crypto/tls/Certificate;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;


# instance fields
.field protected certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/Certificate;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/Certificate;-><init>([Lorg/bouncycastle/asn1/x509/Certificate;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/Certificate;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'certificateList\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clone([Lorg/bouncycastle/asn1/x509/Certificate;)[Lorg/bouncycastle/asn1/x509/Certificate;
    .registers 5

    const/4 v2, 0x0

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/Certificate;

    array-length v1, v0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v1

    if-eqz v1, :cond_21

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :goto_c
    if-gtz v1, :cond_24

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v3, v1, [Lorg/bouncycastle/asn1/x509/Certificate;

    move v1, v0

    :goto_15
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_48

    new-instance v0, Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/Certificate;-><init>([Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-object v0

    :cond_21
    sget-object v0, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    return-object v0

    :cond_24
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v3

    add-int/lit8 v4, v3, 0x3

    sub-int/2addr v1, v4

    invoke-static {v3, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_c

    :cond_48
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x509/Certificate;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/Vector;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(I)V

    move v0, v1

    move v2, v1

    :goto_b
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    array-length v4, v4

    if-lt v0, v4, :cond_1a

    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    :goto_13
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_2f

    return-void

    :cond_1a
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    aget-object v4, v4, v0

    const-string/jumbo v5, "DER"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/x509/Certificate;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    array-length v4, v4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2f
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public getCertificateAt(I)Lorg/bouncycastle/asn1/x509/Certificate;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCertificateList()[Lorg/bouncycastle/asn1/x509/Certificate;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/Certificate;->clone([Lorg/bouncycastle/asn1/x509/Certificate;)[Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCerts()[Lorg/bouncycastle/asn1/x509/Certificate;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/Certificate;->clone([Lorg/bouncycastle/asn1/x509/Certificate;)[Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    array-length v0, v0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/Certificate;->certificateList:[Lorg/bouncycastle/asn1/x509/Certificate;

    array-length v1, v1

    if-eqz v1, :cond_7

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method
