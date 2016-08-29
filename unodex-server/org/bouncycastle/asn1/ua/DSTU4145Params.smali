.class public Lorg/bouncycastle/asn1/ua/DSTU4145Params;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# static fields
.field private static final DEFAULT_DKE:[B


# instance fields
.field private dke:[B

.field private ecbinary:Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

.field private namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0xb

    const/4 v6, 0x4

    const/16 v5, -0x15

    const/16 v4, 0x38

    const/16 v3, 0x17

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v5, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, -0xf

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    aput-byte v1, v0, v7

    const/16 v1, 0xc

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    aput-byte v5, v0, v1

    const/16 v1, 0x13

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    aput-byte v1, v0, v3

    const/16 v1, 0x18

    aput-byte v4, v0, v1

    const/16 v1, 0x19

    const/16 v2, -0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    aput-byte v7, v0, v1

    const/16 v1, 0x2c

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v4, v0, v1

    const/16 v1, 0x31

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    aput-byte v3, v0, v1

    const/16 v1, 0x36

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    aput-byte v1, v0, v4

    const/16 v1, 0x39

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    aput-byte v6, v0, v1

    sput-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->ecbinary:Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    return-void
.end method

.method public static getDefaultDKE()[B
    .registers 1

    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ua/DSTU4145Params;
    .registers 5

    const/4 v2, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;

    if-nez v0, :cond_10

    if-nez p0, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "object parse error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    check-cast p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;

    return-object p0

    :cond_13
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_34

    new-instance v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/ua/DSTU4145Params;-><init>(Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;)V

    :goto_2c
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_42

    :cond_33
    return-object v0

    :cond_34
    new-instance v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/ua/DSTU4145Params;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_2c

    :cond_42
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    iget-object v1, v0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    array-length v1, v1

    sget-object v2, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    array-length v2, v2

    if-eq v1, v2, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "object parse error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDKE()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    return-object v0
.end method

.method public getECBinary()Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->ecbinary:Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    return-object v0
.end method

.method public getNamedCurve()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public isNamedCurve()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v1, :cond_1e

    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->ecbinary:Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_e
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    sget-object v2, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_24

    :goto_18
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_1e
    iget-object v1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_e

    :cond_24
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->dke:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_18
.end method
