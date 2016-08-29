.class public abstract Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    if-nez v0, :cond_9

    if-nez p0, :cond_c

    return-object v2

    :cond_9
    check-cast p0, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    return-object p0

    :cond_c
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v1

    if-nez v1, :cond_26

    new-instance v1, Lorg/bouncycastle/asn1/eac/RSAPublicKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/eac/RSAPublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1

    :cond_26
    new-instance v1, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method


# virtual methods
.method public abstract getUsage()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
.end method
