.class public Lorg/bouncycastle/cms/PasswordRecipientId;
.super Lorg/bouncycastle/cms/RecipientId;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/RecipientId;-><init>(I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lorg/bouncycastle/cms/PasswordRecipientId;

    invoke-direct {v0}, Lorg/bouncycastle/cms/PasswordRecipientId;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/cms/PasswordRecipientId;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    return v1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/cms/PasswordRecipientInformation;

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    return v0
.end method
