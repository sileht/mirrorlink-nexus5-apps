.class public Lorg/bouncycastle/jce/MultiCertStoreParameters;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# instance fields
.field private certStores:Ljava/util/Collection;

.field private searchAllStores:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/MultiCertStoreParameters;-><init>(Ljava/util/Collection;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/MultiCertStoreParameters;->certStores:Ljava/util/Collection;

    iput-boolean p2, p0, Lorg/bouncycastle/jce/MultiCertStoreParameters;->searchAllStores:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public getCertStores()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/MultiCertStoreParameters;->certStores:Ljava/util/Collection;

    return-object v0
.end method

.method public getSearchAllStores()Z
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/jce/MultiCertStoreParameters;->searchAllStores:Z

    return v0
.end method
