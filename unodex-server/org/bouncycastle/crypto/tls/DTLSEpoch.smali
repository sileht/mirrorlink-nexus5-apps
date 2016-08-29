.class Lorg/bouncycastle/crypto/tls/DTLSEpoch;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

.field private final epoch:I

.field private final replayWindow:Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;

.field private sequence_number:J


# direct methods
.method constructor <init>(ILorg/bouncycastle/crypto/tls/TlsCipher;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->replayWindow:Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->sequence_number:J

    if-ltz p1, :cond_17

    if-eqz p2, :cond_20

    iput p1, p0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->epoch:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->cipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'epoch\' must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'cipher\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method allocateSequenceNumber()J
    .registers 5

    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->sequence_number:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->sequence_number:J

    return-wide v0
.end method

.method getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->cipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-object v0
.end method

.method getEpoch()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->epoch:I

    return v0
.end method

.method getReplayWindow()Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->replayWindow:Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;

    return-object v0
.end method

.method getSequence_number()J
    .registers 3

    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->sequence_number:J

    return-wide v0
.end method
