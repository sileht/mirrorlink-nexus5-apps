.class public Lorg/bouncycastle/util/io/pem/PemHeader;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    return-void
.end method

.method private getHashCode(Ljava/lang/String;)I
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-eq p1, p2, :cond_6

    if-nez p1, :cond_8

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0

    :cond_8
    if-eqz p2, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/util/io/pem/PemHeader;

    if-eqz v1, :cond_b

    check-cast p1, Lorg/bouncycastle/util/io/pem/PemHeader;

    if-ne p1, p0, :cond_c

    :cond_9
    const/4 v0, 0x1

    :cond_a
    :goto_a
    return v0

    :cond_b
    return v0

    :cond_c
    iget-object v1, p0, Lorg/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    iget-object v2, p1, Lorg/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/util/io/pem/PemHeader;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    iget-object v2, p1, Lorg/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/util/io/pem/PemHeader;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_a
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/io/pem/PemHeader;->getHashCode(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/bouncycastle/util/io/pem/PemHeader;->getHashCode(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
