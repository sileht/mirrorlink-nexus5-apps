.class public Lorg/bouncycastle/crypto/tls/AlwaysValidVerifyer;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/CertificateVerifyer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([Lorg/bouncycastle/asn1/x509/Certificate;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
