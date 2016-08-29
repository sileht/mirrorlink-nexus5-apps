.class public Lorg/bouncycastle/crypto/tls/LegacyTlsClient;
.super Lorg/bouncycastle/crypto/tls/DefaultTlsClient;
.source "Unknown"


# instance fields
.field protected verifyer:Lorg/bouncycastle/crypto/tls/CertificateVerifyer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/CertificateVerifyer;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/LegacyTlsClient;->verifyer:Lorg/bouncycastle/crypto/tls/CertificateVerifyer;

    return-void
.end method


# virtual methods
.method public getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/LegacyTlsAuthentication;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/LegacyTlsClient;->verifyer:Lorg/bouncycastle/crypto/tls/CertificateVerifyer;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/LegacyTlsAuthentication;-><init>(Lorg/bouncycastle/crypto/tls/CertificateVerifyer;)V

    return-object v0
.end method
