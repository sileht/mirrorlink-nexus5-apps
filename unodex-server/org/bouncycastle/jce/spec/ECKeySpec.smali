.class public Lorg/bouncycastle/jce/spec/ECKeySpec;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lorg/bouncycastle/jce/spec/ECParameterSpec;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/jce/spec/ECParameterSpec;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ECKeySpec;->spec:Lorg/bouncycastle/jce/spec/ECParameterSpec;

    return-void
.end method


# virtual methods
.method public getParams()Lorg/bouncycastle/jce/spec/ECParameterSpec;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ECKeySpec;->spec:Lorg/bouncycastle/jce/spec/ECParameterSpec;

    return-object v0
.end method
