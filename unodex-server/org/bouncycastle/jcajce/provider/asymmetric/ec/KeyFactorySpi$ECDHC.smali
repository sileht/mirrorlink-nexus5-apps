.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDHC;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDHC"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string/jumbo v0, "ECDHC"

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    return-void
.end method
