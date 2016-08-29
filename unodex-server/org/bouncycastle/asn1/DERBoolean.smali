.class public Lorg/bouncycastle/asn1/DERBoolean;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "Unknown"


# static fields
.field public static final FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private static final FALSE_VALUE:[B

.field public static final TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private static final TRUE_VALUE:[B


# instance fields
.field private value:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    sput-object v0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE_VALUE:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE_VALUE:[B

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-nez p1, :cond_a

    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE_VALUE:[B

    :goto_7
    iput-object v0, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    return-void

    :cond_a
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE_VALUE:[B

    goto :goto_7
.end method

.method constructor <init>([B)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    aget-byte v0, p1, v2

    if-eqz v0, :cond_22

    aget-byte v0, p1, v2

    const/16 v1, 0xff

    if-eq v0, v1, :cond_25

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    :goto_16
    iput-object v0, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE_VALUE:[B

    goto :goto_16

    :cond_25
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE_VALUE:[B

    goto :goto_16
.end method

.method static fromOctetString([B)Lorg/bouncycastle/asn1/ASN1Boolean;
    .registers 4

    const/4 v2, 0x0

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    aget-byte v0, p0, v2

    if-eqz v0, :cond_1e

    aget-byte v0, p0, v2

    const/16 v1, 0xff

    if-eq v0, v1, :cond_21

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>([B)V

    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object v0

    :cond_21
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object v0
.end method

.method public static getInstance(I)Lorg/bouncycastle/asn1/ASN1Boolean;
    .registers 2

    if-nez p0, :cond_5

    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_4
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;
    .registers 4

    if-nez p0, :cond_5

    :cond_2
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_5
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/DERBoolean;

    if-nez v0, :cond_2f

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

    :cond_2f
    check-cast p0, Lorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    :goto_39
    return-object v0

    :cond_3a
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_39
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Boolean;
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz p1, :cond_b

    :cond_6
    invoke-static {v0}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    return-object v0

    :cond_b
    instance-of v1, v0, Lorg/bouncycastle/asn1/DERBoolean;

    if-nez v1, :cond_6

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;
    .registers 2

    if-nez p0, :cond_5

    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_4
.end method


# virtual methods
.method protected asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    return v0

    :cond_4
    instance-of v1, p1, Lorg/bouncycastle/asn1/DERBoolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    aget-byte v1, v1, v0

    check-cast p1, Lorg/bouncycastle/asn1/DERBoolean;

    iget-object v2, p1, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_15

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method encodedLength()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method isConstructed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTrue()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBoolean;->value:[B

    aget-byte v0, v0, v1

    if-nez v0, :cond_b

    const-string/jumbo v0, "FALSE"

    :goto_a
    return-object v0

    :cond_b
    const-string/jumbo v0, "TRUE"

    goto :goto_a
.end method
