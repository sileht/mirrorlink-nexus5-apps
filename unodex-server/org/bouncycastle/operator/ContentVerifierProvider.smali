.class public interface abstract Lorg/bouncycastle/operator/ContentVerifierProvider;
.super Ljava/lang/Object;
.source "Unknown"


# virtual methods
.method public abstract get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation
.end method

.method public abstract getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;
.end method

.method public abstract hasAssociatedCertificate()Z
.end method
