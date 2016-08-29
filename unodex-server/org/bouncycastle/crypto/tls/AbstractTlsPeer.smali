.class public abstract Lorg/bouncycastle/crypto/tls/AbstractTlsPeer;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsPeer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    return-void
.end method

.method public notifyAlertReceived(SS)V
    .registers 3

    return-void
.end method
