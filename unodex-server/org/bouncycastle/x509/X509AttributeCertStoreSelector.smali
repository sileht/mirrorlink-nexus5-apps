.class public Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

.field private attributeCertificateValid:Ljava/util/Date;

.field private holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

.field private issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

.field private serialNumber:Ljava/math/BigInteger;

.field private targetGroups:Ljava/util/Collection;

.field private targetNames:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    return-void
.end method

.method private extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_8

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    return-object v1

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    if-nez v3, :cond_36

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_36
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method


# virtual methods
.method public addTargetGroup(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTargetGroup([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->addTargetGroup(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-void
.end method

.method public addTargetName(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTargetName([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->addTargetName(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCertificateValid()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getTargetGroups()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getTargetNames()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    return-object v0
.end method

.method public getAttributeCert()Lorg/bouncycastle/x509/X509AttributeCertificate;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public getAttributeCertificateValid()Ljava/util/Date;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTargetGroups()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTargetNames()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v0, :cond_31

    check-cast p1, Lorg/bouncycastle/x509/X509AttributeCertificate;

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    if-nez v0, :cond_32

    :cond_c
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    if-nez v0, :cond_3b

    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    if-nez v0, :cond_48

    :cond_14
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    if-nez v0, :cond_55

    :cond_18
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    if-nez v0, :cond_62

    :goto_1c
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    :cond_24
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->TargetInformation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_75

    :cond_30
    :goto_30
    return v4

    :cond_31
    return v1

    :cond_32
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    :cond_3b
    invoke-interface {p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    :cond_48
    invoke-interface {p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    :cond_55
    invoke-interface {p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    :cond_62
    :try_start_62
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-interface {p1, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_67
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_62 .. :try_end_67} :catch_68
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_62 .. :try_end_67} :catch_6a

    goto :goto_1c

    :catch_68
    move-exception v0

    return v1

    :catch_6a
    move-exception v0

    return v1

    :cond_6c
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_30

    :cond_75
    :try_start_75
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-static {v0}, Lorg/bouncycastle/asn1/DEROctetString;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TargetInformation;
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_8b} :catch_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_8b} :catch_aa

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TargetInformation;->getTargetsObjects()[Lorg/bouncycastle/asn1/x509/Targets;

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ac

    :cond_98
    iget-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    move v0, v1

    move v2, v1

    :goto_a2
    array-length v3, v5

    if-lt v0, v3, :cond_d8

    if-nez v2, :cond_30

    return v1

    :catch_a8
    move-exception v0

    return v1

    :catch_aa
    move-exception v0

    return v1

    :cond_ac
    move v0, v1

    move v2, v1

    :goto_ae
    array-length v3, v5

    if-lt v0, v3, :cond_b4

    if-nez v2, :cond_98

    return v1

    :cond_b4
    aget-object v3, v5, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lorg/bouncycastle/asn1/x509/Target;

    move-result-object v6

    move v3, v1

    :goto_bb
    array-length v7, v6

    if-lt v3, v7, :cond_c1

    :goto_be
    add-int/lit8 v0, v0, 0x1

    goto :goto_ae

    :cond_c1
    iget-object v7, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    aget-object v8, v6, v3

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/Target;->getTargetName()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d6

    add-int/lit8 v3, v3, 0x1

    goto :goto_bb

    :cond_d6
    move v2, v4

    goto :goto_be

    :cond_d8
    aget-object v3, v5, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lorg/bouncycastle/asn1/x509/Target;

    move-result-object v6

    move v3, v1

    :goto_df
    array-length v7, v6

    if-lt v3, v7, :cond_e5

    :goto_e2
    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    :cond_e5
    iget-object v7, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    aget-object v8, v6, v3

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/Target;->getTargetGroup()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_fa

    add-int/lit8 v3, v3, 0x1

    goto :goto_df

    :cond_fa
    move v2, v4

    goto :goto_e2
.end method

.method public setAttributeCert(Lorg/bouncycastle/x509/X509AttributeCertificate;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lorg/bouncycastle/x509/X509AttributeCertificate;

    return-void
.end method

.method public setAttributeCertificateValid(Ljava/util/Date;)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_6

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    :goto_5
    return-void

    :cond_6
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    goto :goto_5
.end method

.method public setHolder(Lorg/bouncycastle/x509/AttributeCertificateHolder;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lorg/bouncycastle/x509/AttributeCertificateHolder;

    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/x509/AttributeCertificateIssuer;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    return-void
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    return-void
.end method

.method public setTargetGroups(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    return-void
.end method

.method public setTargetNames(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    return-void
.end method
