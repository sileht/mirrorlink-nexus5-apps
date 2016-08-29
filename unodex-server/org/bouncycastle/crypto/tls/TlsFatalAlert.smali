.class public Lorg/bouncycastle/crypto/tls/TlsFatalAlert;
.super Ljava/io/IOException;
.source "Unknown"


# static fields
.field private static final serialVersionUID:J = 0x31be09cba4aa0800L


# instance fields
.field private alertDescription:S


# direct methods
.method public constructor <init>(S)V
    .registers 3

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    int-to-short v0, p1

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->alertDescription:S

    return-void
.end method


# virtual methods
.method public getAlertDescription()S
    .registers 2

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->alertDescription:S

    return v0
.end method
