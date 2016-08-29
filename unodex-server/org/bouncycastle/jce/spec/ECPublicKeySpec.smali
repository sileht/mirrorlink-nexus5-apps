.class public Lorg/bouncycastle/jce/spec/ECPublicKeySpec;
.super Lorg/bouncycastle/jce/spec/ECKeySpec;
.source "Unknown"


# instance fields
.field private q:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/jce/spec/ECParameterSpec;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/bouncycastle/jce/spec/ECKeySpec;-><init>(Lorg/bouncycastle/jce/spec/ECParameterSpec;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method public getQ()Lorg/bouncycastle/math/ec/ECPoint;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
