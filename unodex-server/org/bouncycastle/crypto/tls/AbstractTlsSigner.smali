.class public abstract Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsSigner;


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    return-void
.end method
