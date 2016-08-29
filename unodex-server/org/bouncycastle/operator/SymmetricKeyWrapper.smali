.class public abstract Lorg/bouncycastle/operator/SymmetricKeyWrapper;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/operator/KeyWrapper;


# instance fields
.field private algorithmId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/SymmetricKeyWrapper;->algorithmId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/operator/SymmetricKeyWrapper;->algorithmId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method
