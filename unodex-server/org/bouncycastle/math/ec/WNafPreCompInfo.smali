.class Lorg/bouncycastle/math/ec/WNafPreCompInfo;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field private preComp:[Lorg/bouncycastle/math/ec/ECPoint;

.field private twiceP:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lorg/bouncycastle/math/ec/ECPoint;

    iput-object v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method protected getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method protected getTwiceP()Lorg/bouncycastle/math/ec/ECPoint;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method protected setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method protected setTwiceP(Lorg/bouncycastle/math/ec/ECPoint;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method
