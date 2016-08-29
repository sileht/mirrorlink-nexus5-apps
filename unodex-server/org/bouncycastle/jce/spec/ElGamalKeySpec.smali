.class public Lorg/bouncycastle/jce/spec/ElGamalKeySpec;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ElGamalKeySpec;->spec:Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-void
.end method


# virtual methods
.method public getParams()Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ElGamalKeySpec;->spec:Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-object v0
.end method
