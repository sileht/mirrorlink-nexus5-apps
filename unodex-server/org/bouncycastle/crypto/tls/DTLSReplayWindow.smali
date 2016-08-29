.class Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final VALID_SEQ_MASK:J = 0xffffffffffffL

.field private static final WINDOW_SIZE:J = 0x40L


# instance fields
.field private bitmap:J

.field private latestConfirmedSeq:J


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    return-void
.end method


# virtual methods
.method reportAuthenticated(J)V
    .registers 12

    const-wide/16 v4, 0x40

    const-wide/16 v6, 0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, 0xffffffffffffL

    and-long/2addr v2, p1

    cmp-long v2, v2, p1

    if-eqz v2, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'seq\' out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_34

    move v2, v0

    :goto_20
    if-nez v2, :cond_38

    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long/2addr v2, p1

    cmp-long v4, v2, v4

    if-ltz v4, :cond_36

    :goto_29
    if-nez v0, :cond_33

    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    long-to-int v2, v2

    shl-long v2, v6, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    :cond_33
    :goto_33
    return-void

    :cond_34
    move v2, v1

    goto :goto_20

    :cond_36
    move v0, v1

    goto :goto_29

    :cond_38
    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long v2, p1, v2

    cmp-long v4, v2, v4

    if-gez v4, :cond_47

    :goto_40
    if-nez v0, :cond_49

    iput-wide v6, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    :goto_44
    iput-wide p1, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    goto :goto_33

    :cond_47
    move v0, v1

    goto :goto_40

    :cond_49
    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    long-to-int v2, v2

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    or-long/2addr v0, v6

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    goto :goto_44
.end method

.method reset()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    return-void
.end method

.method shouldDiscard(J)Z
    .registers 12

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-wide v4, 0xffffffffffffL

    and-long/2addr v4, p1

    cmp-long v0, v4, p1

    if-eqz v0, :cond_d

    return v1

    :cond_d
    iget-wide v4, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_23

    move v0, v1

    :goto_14
    if-nez v0, :cond_35

    iget-wide v4, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long/2addr v4, p1

    const-wide/16 v6, 0x40

    cmp-long v0, v4, v6

    if-gez v0, :cond_25

    move v0, v1

    :goto_20
    if-nez v0, :cond_27

    return v1

    :cond_23
    move v0, v2

    goto :goto_14

    :cond_25
    move v0, v2

    goto :goto_20

    :cond_27
    iget-wide v6, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    long-to-int v0, v4

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v0

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_35

    return v1

    :cond_35
    return v2
.end method
