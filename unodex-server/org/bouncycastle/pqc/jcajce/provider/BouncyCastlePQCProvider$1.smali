.class Lorg/bouncycastle/pqc/jcajce/provider/BouncyCastlePQCProvider$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/BouncyCastlePQCProvider$1;->this$0:Lorg/bouncycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/BouncyCastlePQCProvider$1;->this$0:Lorg/bouncycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;

    # invokes: Lorg/bouncycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->setup()V
    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->access$000(Lorg/bouncycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;)V

    const/4 v0, 0x0

    return-object v0
.end method
