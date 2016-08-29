.class public Lorg/bouncycastle/jcajce/provider/digest/RIPEMD160$PBEWithHmacKeyFactory;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/RIPEMD160;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithHmacKeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 9

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string/jumbo v1, "PBEwithHmacRIPEMD160"

    const/16 v6, 0xa0

    const/4 v2, 0x0

    move-object v0, p0

    move v5, v4

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    return-void
.end method
