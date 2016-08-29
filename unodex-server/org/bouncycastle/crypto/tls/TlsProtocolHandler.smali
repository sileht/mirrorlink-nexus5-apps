.class public Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;
.super Lorg/bouncycastle/crypto/tls/TlsClientProtocol;
.source "Unknown"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    return-void
.end method
