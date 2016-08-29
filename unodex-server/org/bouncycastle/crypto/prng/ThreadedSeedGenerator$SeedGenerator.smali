.class Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeedGenerator"
.end annotation


# instance fields
.field private volatile counter:I

.field private volatile stop:Z

.field final synthetic this$0:Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->this$0:Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;-><init>(Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;)V

    return-void
.end method


# virtual methods
.method public generateSeed(IZ)[B
    .registers 9

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-array v2, p1, [B

    iput v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    if-nez p2, :cond_13

    mul-int/lit8 p1, p1, 0x8

    :cond_13
    move v1, v0

    :goto_14
    if-lt v0, p1, :cond_1f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    return-object v2

    :cond_1a
    const-wide/16 v4, 0x1

    :try_start_1c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_37

    :cond_1f
    :goto_1f
    iget v3, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    if-eq v3, v1, :cond_1a

    iget v1, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    if-nez p2, :cond_39

    div-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v3

    shl-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v1, 0x1

    or-int/2addr v4, v5

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :catch_37
    move-exception v3

    goto :goto_1f

    :cond_39
    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_34
.end method

.method public run()V
    .registers 2

    :goto_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    goto :goto_0
.end method
