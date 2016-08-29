.class Lorg/bouncycastle/cms/OriginatorId;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private serialNumber:Ljava/math/BigInteger;

.field private subjectKeyId:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/OriginatorId;->setIssuerAndSerial(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/OriginatorId;->setIssuerAndSerial(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/cms/OriginatorId;->setSubjectKeyID([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/OriginatorId;->setSubjectKeyID([B)V

    return-void
.end method

.method private equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    if-nez p1, :cond_6

    if-eqz p2, :cond_b

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    :cond_b
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private setIssuerAndSerial(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .registers 3

    iput-object p1, p0, Lorg/bouncycastle/cms/OriginatorId;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object p2, p0, Lorg/bouncycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    return-void
.end method

.method private setSubjectKeyID([B)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/cms/OriginatorId;->subjectKeyId:[B

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lorg/bouncycastle/cms/OriginatorId;

    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorId;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lorg/bouncycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/cms/OriginatorId;->subjectKeyId:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/cms/OriginatorId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/cms/OriginatorId;

    if-eqz v1, :cond_12

    check-cast p1, Lorg/bouncycastle/cms/OriginatorId;

    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorId;->subjectKeyId:[B

    iget-object v2, p1, Lorg/bouncycastle/cms/OriginatorId;->subjectKeyId:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_11
    :goto_11
    return v0

    :cond_12
    return v0

    :cond_13
    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/cms/OriginatorId;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorId;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v2, p1, Lorg/bouncycastle/cms/OriginatorId;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/cms/OriginatorId;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/OriginatorId;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/cms/OriginatorId;->subjectKeyId:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    if-nez v1, :cond_f

    :goto_a
    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorId;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    if-nez v1, :cond_17

    :goto_e
    return v0

    :cond_f
    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_a

    :cond_17
    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorId;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_e
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
