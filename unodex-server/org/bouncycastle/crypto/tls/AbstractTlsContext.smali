.class abstract Lorg/bouncycastle/crypto/tls/AbstractTlsContext;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsContext;


# instance fields
.field private clientVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field private secureRandom:Ljava/security/SecureRandom;

.field private securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

.field private serverVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field private userObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->clientVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->serverVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->userObject:Ljava/lang/Object;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->secureRandom:Ljava/security/SecureRandom;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    return-void
.end method


# virtual methods
.method public exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v1

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v3

    array-length v0, v1

    array-length v4, v3

    add-int/2addr v0, v4

    if-nez p2, :cond_2e

    :goto_12
    new-array v4, v0, [B

    array-length v5, v1

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/lit8 v1, v1, 0x0

    array-length v5, v3

    invoke-static {v3, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v1, v3

    if-nez p2, :cond_33

    :goto_23
    if-ne v1, v0, :cond_40

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v0

    invoke-static {p0, v0, p1, v4, p3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    :cond_2e
    array-length v4, p2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    goto :goto_12

    :cond_33
    array-length v3, p2

    invoke-static {v3, v4, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    add-int/lit8 v1, v1, 0x2

    array-length v3, p2

    invoke-static {p2, v6, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p2

    add-int/2addr v1, v3

    goto :goto_23

    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "error in calculation of seed for export"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->clientVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    return-object v0
.end method

.method public getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->serverVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->clientVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method public setServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->serverVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->userObject:Ljava/lang/Object;

    return-void
.end method
