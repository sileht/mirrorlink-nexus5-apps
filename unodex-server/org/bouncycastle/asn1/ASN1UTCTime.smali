.class public Lorg/bouncycastle/asn1/ASN1UTCTime;
.super Lorg/bouncycastle/asn1/DERUTCTime;
.source "Unknown"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DERUTCTime;-><init>([B)V

    return-void
.end method
