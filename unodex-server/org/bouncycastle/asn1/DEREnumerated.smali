.class public Lorg/bouncycastle/asn1/DEREnumerated;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "Unknown"


# static fields
.field private static cache:[Lorg/bouncycastle/asn1/ASN1Enumerated;


# instance fields
.field bytes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Enumerated;

    sput-object v0, Lorg/bouncycastle/asn1/DEREnumerated;->cache:[Lorg/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    return-void
.end method

.method static fromOctetString([B)Lorg/bouncycastle/asn1/ASN1Enumerated;
    .registers 5

    const/4 v2, 0x0

    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_18

    array-length v0, p0

    if-eqz v0, :cond_22

    aget-byte v0, p0, v2

    and-int/lit16 v1, v0, 0xff

    sget-object v0, Lorg/bouncycastle/asn1/DEREnumerated;->cache:[Lorg/bouncycastle/asn1/ASN1Enumerated;

    array-length v0, v0

    if-ge v1, v0, :cond_2b

    sget-object v0, Lorg/bouncycastle/asn1/DEREnumerated;->cache:[Lorg/bouncycastle/asn1/ASN1Enumerated;

    aget-object v0, v0, v1

    if-eqz v0, :cond_35

    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    return-object v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ENUMERATED has zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    return-object v0

    :cond_35
    sget-object v2, Lorg/bouncycastle/asn1/DEREnumerated;->cache:[Lorg/bouncycastle/asn1/ASN1Enumerated;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    aput-object v0, v2, v1

    goto :goto_17
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;
    .registers 5

    if-nez p0, :cond_5

    :cond_2
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    return-object p0

    :cond_5
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/DEREnumerated;

    if-nez v0, :cond_33

    instance-of v0, p0, [B

    if-nez v0, :cond_3f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    check-cast p0, Lorg/bouncycastle/asn1/DEREnumerated;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_3f
    :try_start_3f
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/DEREnumerated;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Enumerated;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_49} :catch_4a

    return-object v0

    :catch_4a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DEREnumerated;
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz p1, :cond_b

    :cond_6
    invoke-static {v0}, Lorg/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    return-object v0

    :cond_b
    instance-of v1, v0, Lorg/bouncycastle/asn1/DEREnumerated;

    if-nez v1, :cond_6

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DEREnumerated;->fromOctetString([B)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 4

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/asn1/DEREnumerated;

    if-eqz v0, :cond_10

    check-cast p1, Lorg/bouncycastle/asn1/DEREnumerated;

    iget-object v0, p0, Lorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    iget-object v1, p1, Lorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    :cond_10
    return v1
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    iget-object v1, p0, Lorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method encodedLength()I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
