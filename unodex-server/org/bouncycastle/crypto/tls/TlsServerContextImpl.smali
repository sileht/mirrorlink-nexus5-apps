.class Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsContext;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsServerContext;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    return-void
.end method


# virtual methods
.method public isServer()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
