.class public Lorg/bouncycastle/cms/KEKRecipientId;
.super Lorg/bouncycastle/cms/RecipientId;
.source "Unknown"


# instance fields
.field private keyIdentifier:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/RecipientId;-><init>(I)V

    iput-object p1, p0, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/bouncycastle/cms/KEKRecipientId;

    iget-object v1, p0, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/KEKRecipientId;-><init>([B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/cms/KEKRecipientId;

    if-eqz v0, :cond_10

    check-cast p1, Lorg/bouncycastle/cms/KEKRecipientId;

    iget-object v0, p0, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    iget-object v1, p1, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    :cond_10
    return v1
.end method

.method public getKeyIdentifier()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x0

    instance-of v0, p1, [B

    if-nez v0, :cond_a

    instance-of v0, p1, Lorg/bouncycastle/cms/KEKRecipientInformation;

    if-nez v0, :cond_15

    return v1

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/cms/KEKRecipientId;->keyIdentifier:[B

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    :cond_15
    check-cast p1, Lorg/bouncycastle/cms/KEKRecipientInformation;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/KEKRecipientInformation;->getRID()Lorg/bouncycastle/cms/RecipientId;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
