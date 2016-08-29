.class public Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/RandomGenerator;


# instance fields
.field private final generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

.field private window:[B

.field private windowCount:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/prng/RandomGenerator;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_f

    const/4 v0, 0x2

    if-lt p2, v0, :cond_18

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    new-array v0, p2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "generator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "windowSize must be at least 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doNextBytes([BII)V
    .registers 9

    const/4 v0, 0x0

    monitor-enter p0

    :goto_2
    if-lt v0, p3, :cond_6

    :try_start_4
    monitor-exit p0

    return-void

    :cond_6
    iget v1, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1d

    :goto_b
    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, p2

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    iget v3, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_2

    :cond_1d
    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    array-length v4, v4

    invoke-interface {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->nextBytes([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    array-length v1, v1

    iput v1, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    goto :goto_b

    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v0
.end method


# virtual methods
.method public addSeedMaterial(J)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->addSeedMaterial(J)V

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public addSeedMaterial([B)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->addSeedMaterial([B)V

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public nextBytes([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->doNextBytes([BII)V

    return-void
.end method

.method public nextBytes([BII)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/prng/ReversedWindowGenerator;->doNextBytes([BII)V

    return-void
.end method
