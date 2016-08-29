.class public interface abstract Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;
.super Ljava/lang/Object;
.source "Unknown"


# virtual methods
.method public abstract calculateDigest([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation
.end method

.method public abstract calculateMac([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation
.end method

.method public abstract setup(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation
.end method
