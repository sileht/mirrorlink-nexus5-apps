.class public Lorg/bouncycastle/cert/jcajce/JcaAttrCertStore;
.super Lorg/bouncycastle/util/CollectionStore;
.source "Unknown"


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/cert/jcajce/JcaAttrCertStore;->convertCerts(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/x509/X509AttributeCertificate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/jcajce/JcaAttrCertStore;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private static convertCerts(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/bouncycastle/x509/X509AttributeCertificate;

    if-nez v3, :cond_20

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_20
    check-cast v0, Lorg/bouncycastle/x509/X509AttributeCertificate;

    new-instance v3, Lorg/bouncycastle/cert/jcajce/JcaX509AttributeCertificateHolder;

    invoke-direct {v3, v0}, Lorg/bouncycastle/cert/jcajce/JcaX509AttributeCertificateHolder;-><init>(Lorg/bouncycastle/x509/X509AttributeCertificate;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method
