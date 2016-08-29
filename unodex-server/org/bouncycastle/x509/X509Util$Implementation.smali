.class Lorg/bouncycastle/x509/X509Util$Implementation;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/x509/X509Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Implementation"
.end annotation


# instance fields
.field engine:Ljava/lang/Object;

.field provider:Ljava/security/Provider;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/security/Provider;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/X509Util$Implementation;->engine:Ljava/lang/Object;

    iput-object p2, p0, Lorg/bouncycastle/x509/X509Util$Implementation;->provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method getEngine()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509Util$Implementation;->engine:Ljava/lang/Object;

    return-object v0
.end method

.method getProvider()Ljava/security/Provider;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509Util$Implementation;->provider:Ljava/security/Provider;

    return-object v0
.end method
