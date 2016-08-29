.class public interface abstract Lorg/bouncycastle/operator/KeyWrapper;
.super Ljava/lang/Object;
.source "Unknown"


# virtual methods
.method public abstract generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation
.end method

.method public abstract getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.end method
