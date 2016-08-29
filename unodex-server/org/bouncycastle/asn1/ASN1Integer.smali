.class public Lorg/bouncycastle/asn1/ASN1Integer;
.super Lorg/bouncycastle/asn1/DERInteger;
.source "Unknown"


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/DERInteger;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>([B)V

    return-void
.end method
