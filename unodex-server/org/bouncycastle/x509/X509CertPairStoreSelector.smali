.class public Lorg/bouncycastle/x509/X509CertPairStoreSelector;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private certPair:Lorg/bouncycastle/x509/X509CertificatePair;

.field private forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

.field private reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    new-instance v1, Lorg/bouncycastle/x509/X509CertPairStoreSelector;

    invoke-direct {v1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    iput-object v0, v1, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    if-nez v0, :cond_12

    :goto_d
    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    if-nez v0, :cond_1e

    :goto_11
    return-object v1

    :cond_12
    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->setForwardSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V

    goto :goto_d

    :cond_1e
    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->setReverseSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V

    goto :goto_11
.end method

.method public getCertPair()Lorg/bouncycastle/x509/X509CertificatePair;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    return-object v0
.end method

.method public getForwardSelector()Lorg/bouncycastle/x509/X509CertStoreSelector;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    return-object v0
.end method

.method public getReverseSelector()Lorg/bouncycastle/x509/X509CertStoreSelector;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x0

    :try_start_1
    instance-of v1, p1, Lorg/bouncycastle/x509/X509CertificatePair;

    if-eqz v1, :cond_17

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/x509/X509CertificatePair;

    move-object v1, v0

    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    if-nez v2, :cond_18

    :cond_d
    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    if-nez v2, :cond_25

    :cond_11
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    if-nez v1, :cond_32

    const/4 v1, 0x1

    return v1

    :cond_17
    return v4

    :cond_18
    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v1}, Lorg/bouncycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v4

    :cond_25
    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v1}, Lorg/bouncycastle/x509/X509CertificatePair;->getReverse()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v4

    :cond_32
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/x509/X509CertificatePair;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_39

    move-result v1

    return v1

    :catch_39
    move-exception v1

    return v4
.end method

.method public setCertPair(Lorg/bouncycastle/x509/X509CertificatePair;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    return-void
.end method

.method public setForwardSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    return-void
.end method

.method public setReverseSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    return-void
.end method
