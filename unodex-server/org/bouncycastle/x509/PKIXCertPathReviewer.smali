.class public Lorg/bouncycastle/x509/PKIXCertPathReviewer;
.super Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;
.source "Unknown"


# static fields
.field private static final AUTH_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DIST_POINTS:Ljava/lang/String;

.field private static final QC_STATEMENT:Ljava/lang/String;

.field private static final RESOURCE_NAME:Ljava/lang/String; = "org.bouncycastle.x509.CertPathReviewerMessages"


# instance fields
.field protected certPath:Ljava/security/cert/CertPath;

.field protected certs:Ljava/util/List;

.field protected errors:[Ljava/util/List;

.field private initialized:Z

.field protected n:I

.field protected notifications:[Ljava/util/List;

.field protected pkixParams:Ljava/security/cert/PKIXParameters;

.field protected policyTree:Ljava/security/cert/PolicyNode;

.field protected subjectPublicKey:Ljava/security/PublicKey;

.field protected trustAnchor:Ljava/security/cert/TrustAnchor;

.field protected validDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->QCStatements:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V

    return-void
.end method

.method private IPtoString([B)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_10
    array-length v2, p1

    if-ne v0, v2, :cond_18

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_18
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method private checkCriticalExtensions()V
    .registers 11

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    :try_start_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a .. :try_end_d} :catch_27
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_a .. :try_end_d} :catch_51

    move-result v0

    if-nez v0, :cond_1c

    :try_start_10
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_15
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_10 .. :try_end_15} :catch_51

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_19
    if-gez v2, :cond_5e

    :goto_1b
    return-void

    :cond_1c
    :try_start_1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V
    :try_end_26
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1c .. :try_end_26} :catch_27
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1c .. :try_end_26} :catch_51

    goto :goto_a

    :catch_27
    move-exception v0

    :try_start_28
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v3, "CertPathReviewer.certPathCheckerError"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v2
    :try_end_51
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_28 .. :try_end_51} :catch_51

    :catch_51
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_1b

    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v4

    if-nez v4, :cond_70

    :cond_6c
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_19

    :cond_70
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6c

    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ea

    :cond_b0
    :goto_b0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f6

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v6, "CertPathReviewer.unknownCriticalExt"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v9, v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_c4

    :cond_ea
    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->processQcStatements(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-eqz v1, :cond_b0

    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_f5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_5e .. :try_end_f5} :catch_51

    goto :goto_b0

    :cond_f6
    :try_start_f6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1, v0, v4}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_ff
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_f6 .. :try_end_ff} :catch_100
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_f6 .. :try_end_ff} :catch_51

    goto :goto_b4

    :catch_100
    move-exception v0

    :try_start_101
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.criticalExtensionError"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v1, v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
    :try_end_130
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_101 .. :try_end_130} :catch_51
.end method

.method private checkNameConstraints()V
    .registers 10

    const/4 v2, 0x0

    new-instance v5, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v5}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    :try_start_6
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_f
    if-gtz v4, :cond_12

    :goto_11
    return-void

    :cond_12
    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int/2addr v0, v4

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    :try_end_20
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_6 .. :try_end_20} :catch_90

    move-result v1

    if-eqz v1, :cond_31

    :cond_23
    :try_start_23
    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_2b
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_23 .. :try_end_2b} :catch_117
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_23 .. :try_end_2b} :catch_90

    if-nez v0, :cond_12b

    :cond_2d
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_f

    :cond_31
    :try_start_31
    invoke-static {v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v6}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_43
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_31 .. :try_end_43} :catch_90

    :try_start_43
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_49} :catch_71
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_43 .. :try_end_49} :catch_90

    :try_start_49
    invoke-virtual {v5, v1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_4c
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_49 .. :try_end_4c} :catch_9e
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_49 .. :try_end_4c} :catch_90

    :try_start_4c
    invoke-virtual {v5, v1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_4f
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_4c .. :try_end_4f} :catch_c1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4c .. :try_end_4f} :catch_90

    :try_start_4f
    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_57
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4f .. :try_end_57} :catch_e4
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4f .. :try_end_57} :catch_90

    if-eqz v1, :cond_23

    move v3, v2

    :goto_5a
    :try_start_5a
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ge v3, v6, :cond_23

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;
    :try_end_67
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_5a .. :try_end_67} :catch_90

    move-result-object v6

    :try_start_68
    invoke-virtual {v5, v6}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_6e
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_68 .. :try_end_6e} :catch_f8
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_68 .. :try_end_6e} :catch_90

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    :catch_71
    move-exception v0

    :try_start_72
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.ncSubjectNameError"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v8, v3}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    invoke-direct {v1, v2, v5, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v1, v0, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2
    :try_end_90
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_72 .. :try_end_90} :catch_90

    :catch_90
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_11

    :catch_9e
    move-exception v0

    :try_start_9f
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.notPermittedDN"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    invoke-direct {v1, v2, v5, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v1, v0, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_c1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.excludedDN"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    invoke-direct {v1, v2, v5, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v1, v0, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_e4
    move-exception v0

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v3, "CertPathReviewer.subjAltNameExtError"

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v1, v0, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_f8
    move-exception v0

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v3, "CertPathReviewer.notPermittedEmail"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v8, v6}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v5, v7

    invoke-direct {v1, v2, v3, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v1, v0, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_117
    move-exception v0

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v3, "CertPathReviewer.ncExtError"

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v1, v0, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_12b
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NameConstraints;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v1

    if-nez v1, :cond_147

    :goto_135
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v1

    if-eqz v1, :cond_2d

    move v0, v2

    :goto_13c
    array-length v3, v1

    if-eq v0, v3, :cond_2d

    aget-object v3, v1, v0

    invoke-virtual {v5, v3}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13c

    :cond_147
    invoke-virtual {v5, v1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_14a
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_9f .. :try_end_14a} :catch_90

    goto :goto_135
.end method

.method private checkPathLength()V
    .registers 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v2, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v1, v5

    :goto_e
    if-gtz v4, :cond_28

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v3, "CertPathReviewer.totalPathLength"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V

    return-void

    :cond_28
    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int/2addr v0, v4

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-eqz v6, :cond_49

    :goto_39
    :try_start_39
    sget-object v6, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_42
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_39 .. :try_end_42} :catch_5f

    move-result-object v0

    :goto_43
    if-nez v0, :cond_70

    :cond_45
    :goto_45
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_e

    :cond_49
    if-lez v2, :cond_50

    :goto_4b
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_50
    new-instance v6, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v7, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v8, "CertPathReviewer.pathLenghtExtended"

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    goto :goto_4b

    :catch_5f
    move-exception v0

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v7, "CertPathReviewer.processLengthConstError"

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    move-object v0, v3

    goto :goto_43

    :cond_70
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_45

    move v2, v0

    goto :goto_45
.end method

.method private checkPolicy()V
    .registers 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v19

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/4 v2, 0x0

    :goto_13
    move-object/from16 v0, v20

    array-length v3, v0

    if-lt v2, v3, :cond_b7

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v2, "2.5.29.32.0"

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v8, "2.5.29.32.0"

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v3}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v3

    if-nez v3, :cond_c2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v3, v3, 0x1

    :goto_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v4}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v4

    if-nez v4, :cond_c4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v4, v4, 0x1

    :goto_5e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v5

    if-nez v5, :cond_c6

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v5, v5, 0x1

    :goto_6e
    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_70
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v18, v6

    move v12, v5

    move v13, v4

    move v14, v3

    move-object v15, v2

    move-object v5, v9

    :goto_81
    if-gez v18, :cond_c8

    invoke-static {v10}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    :try_end_86
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_70 .. :try_end_86} :catch_114

    move-result v2

    if-eqz v2, :cond_4e5

    :cond_89
    :goto_89
    :try_start_89
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v10, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_91
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_89 .. :try_end_91} :catch_51a
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_89 .. :try_end_91} :catch_114

    if-nez v2, :cond_4eb

    :goto_93
    if-eqz v15, :cond_532

    :try_start_95
    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v2

    if-nez v2, :cond_556

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_a2
    move-object/from16 v0, v20

    array-length v2, v0

    if-lt v4, v2, :cond_614

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v15

    :goto_ac
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_af
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_95 .. :try_end_af} :catch_114

    move-result v2

    if-nez v2, :cond_65b

    if-nez v3, :cond_678

    :cond_b4
    :goto_b4
    if-lez v14, :cond_6a8

    :cond_b6
    :goto_b6
    return-void

    :cond_b7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v20, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_13

    :cond_c2
    const/4 v3, 0x0

    goto :goto_4e

    :cond_c4
    const/4 v4, 0x0

    goto :goto_5e

    :cond_c6
    const/4 v5, 0x0

    goto :goto_6e

    :cond_c8
    :try_start_c8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int v4, v2, v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v10, v0
    :try_end_dc
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_c8 .. :try_end_dc} :catch_114

    :try_start_dc
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v10, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v11, v0
    :try_end_e6
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_dc .. :try_end_e6} :catch_fc
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_dc .. :try_end_e6} :catch_114

    if-nez v11, :cond_123

    :cond_e8
    move-object v9, v5

    move-object v7, v15

    :goto_ea
    if-eqz v11, :cond_2da

    :goto_ec
    if-lez v14, :cond_2dd

    :cond_ee
    :try_start_ee
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-ne v4, v2, :cond_2f0

    move-object v2, v7

    :goto_f5
    add-int/lit8 v3, v18, -0x1

    move/from16 v18, v3

    move-object v5, v9

    move-object v15, v2

    goto :goto_81

    :catch_fc
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.policyExtError"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v18

    invoke-direct {v4, v3, v2, v5, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
    :try_end_114
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_ee .. :try_end_114} :catch_114

    :catch_114
    move-exception v2

    invoke-virtual {v2}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_b6

    :cond_123
    if-eqz v15, :cond_e8

    :try_start_125
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_12e
    :goto_12e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_153

    if-nez v5, :cond_1a1

    :cond_136
    move-object/from16 v16, v2

    :cond_138
    if-lez v13, :cond_1c9

    :cond_13a
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :cond_13e
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1d7

    :cond_144
    :goto_144
    add-int/lit8 v2, v4, -0x1

    move v6, v2

    :goto_147
    if-gez v6, :cond_290

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_2bd

    :cond_14f
    move-object/from16 v9, v16

    move-object v7, v15

    goto :goto_ea

    :cond_153
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "2.5.29.32.0"

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_170
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_125 .. :try_end_170} :catch_114

    move-result v8

    if-nez v8, :cond_12e

    :try_start_173
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_17a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_173 .. :try_end_17a} :catch_189
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_173 .. :try_end_17a} :catch_114

    move-result-object v6

    :try_start_17b
    move-object/from16 v0, v20

    invoke-static {v4, v0, v7, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->processCertD1i(I[Ljava/util/List;Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)Z

    move-result v8

    if-nez v8, :cond_12e

    move-object/from16 v0, v20

    invoke-static {v4, v0, v7, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->processCertD1ii(I[Ljava/util/List;Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)V

    goto :goto_12e

    :catch_189
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.policyQualifierError"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v18

    invoke-direct {v4, v3, v2, v5, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_1a1
    const-string/jumbo v3, "2.5.29.32.0"

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_136

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    :cond_1b3
    :goto_1b3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_138

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b3

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b3

    :cond_1c9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-ge v4, v2, :cond_144

    invoke-static {v10}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_13a

    goto/16 :goto_144

    :cond_1d7
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v3

    const-string/jumbo v5, "2.5.29.32.0"

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1ed
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_17b .. :try_end_1ed} :catch_114

    move-result v5

    if-eqz v5, :cond_13e

    :try_start_1f0
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_1f7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1f0 .. :try_end_1f7} :catch_224
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1f0 .. :try_end_1f7} :catch_114

    move-result-object v7

    add-int/lit8 v2, v4, -0x1

    :try_start_1fa
    aget-object v21, v20, v2

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_1ff
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_144

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_219
    :goto_219
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_23c

    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_1ff

    :catch_224
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.policyQualifierError"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v18

    invoke-direct {v4, v3, v2, v5, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_23c
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_277

    instance-of v3, v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v3, :cond_219

    check-cast v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    :goto_24e
    const/4 v3, 0x0

    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v5

    :goto_253
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_27b

    if-nez v3, :cond_219

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v6, v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    aget-object v3, v20, v4

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_219

    :cond_277
    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    goto :goto_24e

    :cond_27b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28e

    move v2, v3

    :goto_28c
    move v3, v2

    goto :goto_253

    :cond_28e
    const/4 v2, 0x1

    goto :goto_28c

    :cond_290
    aget-object v7, v20, v6

    const/4 v2, 0x0

    move v5, v2

    move-object v3, v15

    :goto_295
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lt v5, v2, :cond_2a1

    :goto_29b
    add-int/lit8 v2, v6, -0x1

    move v6, v2

    move-object v15, v3

    goto/16 :goto_147

    :cond_2a1
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v8

    if-eqz v8, :cond_2b3

    move-object v2, v3

    :cond_2ae
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    goto :goto_295

    :cond_2b3
    move-object/from16 v0, v20

    invoke-static {v3, v0, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    if-nez v2, :cond_2ae

    move-object v3, v2

    goto :goto_29b

    :cond_2bd
    sget-object v3, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aget-object v6, v20, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_2c7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_14f

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v2, v5}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2c7

    :cond_2da
    const/4 v7, 0x0

    goto/16 :goto_ec

    :cond_2dd
    if-nez v7, :cond_ee

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.noValidPolicyTree"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v3
    :try_end_2f0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1fa .. :try_end_2f0} :catch_114

    :cond_2f0
    :try_start_2f0
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v10, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_2f5
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2f0 .. :try_end_2f5} :catch_31e
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2f0 .. :try_end_2f5} :catch_114

    move-result-object v3

    if-nez v3, :cond_336

    :cond_2f8
    if-nez v3, :cond_3a2

    move-object v6, v7

    :goto_2fb
    :try_start_2fb
    invoke-static {v10}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    :try_end_2fe
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2fb .. :try_end_2fe} :catch_114

    move-result v2

    if-eqz v2, :cond_44c

    move v3, v12

    move v4, v13

    move v5, v14

    :goto_304
    :try_start_304
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v10, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_30c
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_304 .. :try_end_30c} :catch_4a8
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_304 .. :try_end_30c} :catch_114

    if-nez v2, :cond_466

    :cond_30e
    :try_start_30e
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v10, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERInteger;
    :try_end_316
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_30e .. :try_end_316} :catch_4cd
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_30e .. :try_end_316} :catch_114

    if-nez v2, :cond_4c0

    :cond_318
    :goto_318
    move v12, v3

    move v13, v4

    move v14, v5

    move-object v2, v6

    goto/16 :goto_f5

    :catch_31e
    move-exception v2

    :try_start_31f
    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.policyMapExtError"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v18

    invoke-direct {v4, v3, v2, v5, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_336
    move-object v0, v3

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v2, v0

    const/4 v5, 0x0

    move v8, v5

    :goto_33c
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v8, v5, :cond_2f8

    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v11, "2.5.29.32.0"

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_374

    const-string/jumbo v6, "2.5.29.32.0"

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38b

    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_33c

    :cond_374
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.invalidPolicyMapping"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v18

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_38b
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.invalidPolicyMapping"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v18

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_3a2
    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v6, v2

    :goto_3b0
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-lt v6, v2, :cond_3c4

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v7

    :goto_3bb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_402

    move-object v6, v3

    goto/16 :goto_2fb

    :cond_3c4
    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f3

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_3ef
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_3b0

    :cond_3f3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3ef

    :cond_402
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_408
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_31f .. :try_end_408} :catch_114

    if-gtz v12, :cond_40f

    if-lez v12, :cond_445

    :goto_40c
    move-object v2, v3

    :goto_40d
    move-object v3, v2

    goto :goto_3bb

    :cond_40f
    :try_start_40f
    move-object/from16 v0, v20

    invoke-static {v4, v0, v2, v8, v10}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    :try_end_414
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_40f .. :try_end_414} :catch_415
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_40f .. :try_end_414} :catch_42d
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_40f .. :try_end_414} :catch_114

    goto :goto_40c

    :catch_415
    move-exception v2

    :try_start_416
    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.policyExtError"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v18

    invoke-direct {v4, v3, v2, v5, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :catch_42d
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.policyQualifierError"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v18

    invoke-direct {v4, v3, v2, v5, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_445
    move-object/from16 v0, v20

    invoke-static {v4, v0, v2, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :try_end_44a
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_416 .. :try_end_44a} :catch_114

    move-result-object v2

    goto :goto_40d

    :cond_44c
    if-nez v14, :cond_459

    move v4, v14

    :goto_44f
    if-nez v12, :cond_45c

    move v2, v12

    :goto_452
    if-nez v13, :cond_45f

    move v3, v2

    move v5, v4

    move v4, v13

    goto/16 :goto_304

    :cond_459
    add-int/lit8 v4, v14, -0x1

    goto :goto_44f

    :cond_45c
    add-int/lit8 v2, v12, -0x1

    goto :goto_452

    :cond_45f
    add-int/lit8 v3, v13, -0x1

    move v5, v4

    move v4, v3

    move v3, v2

    goto/16 :goto_304

    :cond_466
    :try_start_466
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    :goto_46a
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_30e

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    packed-switch v8, :pswitch_data_6bc

    :cond_47d
    move v2, v3

    move v3, v5

    :goto_47f
    move v5, v3

    move v3, v2

    goto :goto_46a

    :pswitch_482
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ge v2, v5, :cond_47d

    move/from16 v23, v3

    move v3, v2

    move/from16 v2, v23

    goto :goto_47f

    :pswitch_497
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I
    :try_end_4a3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_466 .. :try_end_4a3} :catch_4a8
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_466 .. :try_end_4a3} :catch_114

    move-result v2

    if-ge v2, v3, :cond_47d

    move v3, v5

    goto :goto_47f

    :catch_4a8
    move-exception v2

    :try_start_4a9
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.policyConstExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v18

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3
    :try_end_4c0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4a9 .. :try_end_4c0} :catch_114

    :cond_4c0
    :try_start_4c0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I
    :try_end_4c7
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4c0 .. :try_end_4c7} :catch_4cd
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4c0 .. :try_end_4c7} :catch_114

    move-result v2

    if-ge v2, v4, :cond_318

    move v4, v2

    goto/16 :goto_318

    :catch_4cd
    move-exception v2

    :try_start_4ce
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.policyInhibitExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v18

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3
    :try_end_4e5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4ce .. :try_end_4e5} :catch_114

    :cond_4e5
    if-lez v14, :cond_89

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_89

    :cond_4eb
    :try_start_4eb
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    move v3, v14

    :goto_4f0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_4f9

    move v14, v3

    goto/16 :goto_93

    :cond_4f9
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    packed-switch v6, :pswitch_data_6c4

    :cond_506
    move v2, v3

    :goto_507
    move v3, v2

    goto :goto_4f0

    :pswitch_509
    const/4 v6, 0x0

    invoke-static {v2, v6}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I
    :try_end_515
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4eb .. :try_end_515} :catch_51a
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4eb .. :try_end_515} :catch_114

    move-result v2

    if-nez v2, :cond_506

    const/4 v2, 0x0

    goto :goto_507

    :catch_51a
    move-exception v2

    :try_start_51b
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.policyConstExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v18

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_532
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v2

    if-nez v2, :cond_53f

    const/4 v3, 0x0

    goto/16 :goto_b4

    :cond_53f
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.explicitPolicy"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v18

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_556
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v2

    if-nez v2, :cond_564

    :cond_560
    move-object v2, v15

    :cond_561
    move-object v3, v2

    goto/16 :goto_b4

    :cond_564
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_59c

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_571
    move-object/from16 v0, v20

    array-length v2, v0

    if-lt v4, v2, :cond_5b3

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_57a
    :goto_57a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5ea

    if-eqz v15, :cond_560

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    move-object v2, v15

    :goto_58a
    if-ltz v5, :cond_561

    aget-object v6, v20, v5

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    :goto_591
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lt v4, v2, :cond_5fb

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move-object v2, v3

    goto :goto_58a

    :cond_59c
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.explicitPolicy"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v18

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_5b3
    aget-object v7, v20, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_5b7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lt v3, v2, :cond_5c1

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_571

    :cond_5c1
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string/jumbo v8, "2.5.29.32.0"

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5d8

    :cond_5d4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5b7

    :cond_5d8
    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v2

    :goto_5dc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5d4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5dc

    :cond_5ea
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57a

    goto :goto_57a

    :cond_5fb
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v7

    if-eqz v7, :cond_60d

    move-object v2, v3

    :goto_608
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    goto :goto_591

    :cond_60d
    move-object/from16 v0, v20

    invoke-static {v3, v0, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    goto :goto_608

    :cond_614
    aget-object v6, v20, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_618
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lt v3, v2, :cond_623

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_a2

    :cond_623
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string/jumbo v7, "2.5.29.32.0"

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_63a

    :cond_636
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_618

    :cond_63a
    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v7

    :cond_63e
    :goto_63e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_636

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string/jumbo v8, "2.5.29.32.0"

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_63e

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_63e

    :cond_65b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_671

    move-object v2, v3

    :goto_66e
    move-object v3, v2

    goto/16 :goto_ac

    :cond_671
    move-object/from16 v0, v20

    invoke-static {v3, v0, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    goto :goto_66e

    :cond_678
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    :goto_67f
    if-ltz v5, :cond_b4

    aget-object v6, v20, v5

    const/4 v2, 0x0

    move v4, v2

    :goto_685
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lt v4, v2, :cond_68f

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto :goto_67f

    :cond_68f
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v7

    if-eqz v7, :cond_6a1

    move-object v2, v3

    :goto_69c
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    goto :goto_685

    :cond_6a1
    move-object/from16 v0, v20

    invoke-static {v3, v0, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    goto :goto_69c

    :cond_6a8
    if-nez v3, :cond_b6

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.invalidPolicy"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v3
    :try_end_6bb
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_51b .. :try_end_6bb} :catch_114

    nop

    :pswitch_data_6bc
    .packed-switch 0x0
        :pswitch_482
        :pswitch_497
    .end packed-switch

    :pswitch_data_6c4
    .packed-switch 0x0
        :pswitch_509
    .end packed-switch
.end method

.method private checkSignatures()V
    .registers 20

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.certPathValidDate"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Lorg/bouncycastle/i18n/filter/TrustedInput;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-direct {v8, v9}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lorg/bouncycastle/i18n/filter/TrustedInput;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-direct {v8, v9}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    invoke-direct {v1, v2, v5, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V

    :try_start_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_9c

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c8

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;
    :try_end_67
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2e .. :try_end_67} :catch_fb
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_67} :catch_128

    :try_start_67
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-nez v3, :cond_108

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_70
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_67 .. :try_end_70} :catch_125
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_70} :catch_4de

    move-result-object v3

    :goto_71
    :try_start_71
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/security/SignatureException; {:try_start_71 .. :try_end_7c} :catch_112
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7c} :catch_4e2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_71 .. :try_end_7c} :catch_125
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_7c} :catch_4de

    :goto_7c
    move-object v11, v2

    :goto_7d
    if-nez v11, :cond_151

    move-object v3, v4

    :cond_80
    :goto_80
    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez v11, :cond_1a7

    :goto_84
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v9, v4, -0x1

    move-object v5, v1

    move-object v10, v3

    move-object v6, v2

    :goto_91
    if-gez v9, :cond_1d9

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-void

    :cond_9c
    :try_start_9c
    new-instance v5, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v7, "CertPathReviewer.conflictingTrustAnchors"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x1

    new-instance v9, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v8, v2

    invoke-direct {v5, v6, v7, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    :goto_c6
    move-object v2, v3

    goto :goto_7c

    :cond_c8
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v6, "CertPathReviewer.noTrustAnchorFound"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v8}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-direct {v2, v5, v6, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V
    :try_end_fa
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_9c .. :try_end_fa} :catch_fb
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_fa} :catch_128

    goto :goto_c6

    :catch_fb
    move-exception v1

    :goto_fc
    invoke-virtual {v1}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    :goto_105
    move-object v11, v3

    goto/16 :goto_7d

    :cond_108
    :try_start_108
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    goto/16 :goto_71

    :catch_112
    move-exception v1

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.trustButInvalidCert"

    invoke-direct {v1, v3, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V
    :try_end_123
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_108 .. :try_end_123} :catch_125
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_123} :catch_4de

    goto/16 :goto_7c

    :catch_125
    move-exception v1

    move-object v3, v2

    goto :goto_fc

    :catch_128
    move-exception v1

    :goto_129
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v6, "CertPathReviewer.unknown"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v9, v1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    invoke-direct {v2, v5, v6, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    goto :goto_105

    :cond_151
    invoke-virtual {v11}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-nez v2, :cond_180

    :try_start_157
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v11}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V
    :try_end_160
    .catch Ljava/lang/IllegalArgumentException; {:try_start_157 .. :try_end_160} :catch_185

    :goto_160
    move-object v3, v1

    :goto_161
    if-eqz v2, :cond_80

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v1

    if-eqz v1, :cond_80

    const/4 v2, 0x5

    aget-boolean v1, v1, v2

    if-nez v1, :cond_80

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.trustKeyUsage"

    invoke-direct {v1, v2, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V

    goto/16 :goto_80

    :cond_180
    :try_start_180
    invoke-static {v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    :try_end_183
    .catch Ljava/lang/IllegalArgumentException; {:try_start_180 .. :try_end_183} :catch_185

    move-result-object v1

    goto :goto_160

    :catch_185
    move-exception v1

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.trustDNInvalid"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v11}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    invoke-direct {v1, v3, v5, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    move-object v3, v4

    goto :goto_161

    :cond_1a7
    invoke-virtual {v11}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-nez v2, :cond_1c2

    invoke-virtual {v11}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    :goto_1b1
    :try_start_1b1
    invoke-static {v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_1bb
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1b1 .. :try_end_1bb} :catch_1c7

    :goto_1bb
    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    goto/16 :goto_84

    :cond_1c2
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    goto :goto_1b1

    :catch_1c7
    move-exception v4

    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v6, "CertPathReviewer.trustPubKeyError"

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    goto :goto_1bb

    :cond_1d9
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int v12, v1, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-nez v6, :cond_242

    invoke-static {v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_278

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.NoIssuerPublicKey"

    invoke-direct {v1, v2, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_2c4

    :cond_208
    :goto_208
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :goto_20d
    :try_start_20d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-virtual {v3, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_214
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_20d .. :try_end_214} :catch_31e
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_20d .. :try_end_214} :catch_340

    :goto_214
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v1

    if-nez v1, :cond_362

    :goto_21e
    if-nez v10, :cond_41e

    :cond_220
    :goto_220
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-ne v12, v1, :cond_44f

    :cond_226
    :goto_226
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    :try_start_22a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-static {v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_23c
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_22a .. :try_end_23c} :catch_4cb

    :goto_23c
    add-int/lit8 v9, v9, -0x1

    move-object v5, v3

    move-object v10, v1

    goto/16 :goto_91

    :cond_242
    :try_start_242
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v6, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_24d
    .catch Ljava/security/GeneralSecurityException; {:try_start_242 .. :try_end_24d} :catch_24e

    goto :goto_20d

    :catch_24e
    move-exception v1

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v7, "CertPathReviewer.signatureNotVerified"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v13

    const/4 v13, 0x1

    aput-object v1, v8, v13

    const/4 v13, 0x2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v13

    invoke-direct {v2, v4, v7, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_20d

    :cond_278
    :try_start_278
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"

    invoke-direct {v1, v2, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_297
    .catch Ljava/security/GeneralSecurityException; {:try_start_278 .. :try_end_297} :catch_299

    goto/16 :goto_20d

    :catch_299
    move-exception v1

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v7, "CertPathReviewer.signatureNotVerified"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v13

    const/4 v13, 0x1

    aput-object v1, v8, v13

    const/4 v13, 0x2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v13

    invoke-direct {v2, v4, v7, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_20d

    :cond_2c4
    :try_start_2c4
    invoke-static {v2}, Lorg/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_208

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    const/4 v7, 0x0

    aget-object v4, v4, v7

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_208

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v13, Lorg/bouncycastle/i18n/LocaleString;

    const-string/jumbo v14, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v15, "missingIssuer"

    invoke-direct {v13, v14, v15}, Lorg/bouncycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v13, " \""

    aput-object v13, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    const/4 v4, 0x3

    const-string/jumbo v8, "\" "

    aput-object v8, v7, v4

    const/4 v4, 0x4

    new-instance v8, Lorg/bouncycastle/i18n/LocaleString;

    const-string/jumbo v13, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v14, "missingSerial"

    invoke-direct {v8, v13, v14}, Lorg/bouncycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v4

    const/4 v4, 0x5

    const-string/jumbo v8, " "

    aput-object v8, v7, v4

    const/4 v4, 0x6

    aput-object v2, v7, v4

    invoke-virtual {v1, v7}, Lorg/bouncycastle/i18n/ErrorBundle;->setExtraArguments([Ljava/lang/Object;)V
    :try_end_319
    .catch Ljava/io/IOException; {:try_start_2c4 .. :try_end_319} :catch_31b

    goto/16 :goto_208

    :catch_31b
    move-exception v2

    goto/16 :goto_208

    :catch_31e
    move-exception v1

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.certificateNotYetValid"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v13, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v13, v7, v8

    invoke-direct {v1, v2, v4, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_214

    :catch_340
    move-exception v1

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.certificateExpired"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v13, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v13, v7, v8

    invoke-direct {v1, v2, v4, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_214

    :cond_362
    const/4 v1, 0x0

    :try_start_363
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_368
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_363 .. :try_end_368} :catch_3b4

    move-result-object v2

    if-nez v2, :cond_3af

    :goto_36b
    const/4 v2, 0x0

    :try_start_36c
    sget-object v4, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_371
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_36c .. :try_end_371} :catch_3cb

    move-result-object v4

    if-nez v4, :cond_3c6

    :goto_374
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getCRLDistUrls(Lorg/bouncycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getOCSPUrls(Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_384
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3dd

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3fd

    :try_start_394
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    :try_end_3a1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_394 .. :try_end_3a1} :catch_3a3

    goto/16 :goto_21e

    :catch_3a3
    move-exception v1

    invoke-virtual {v1}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_21e

    :cond_3af
    :try_start_3af
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_3b2
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3af .. :try_end_3b2} :catch_3b4

    move-result-object v1

    goto :goto_36b

    :catch_3b4
    move-exception v2

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v7, "CertPathReviewer.crlDistPtExtError"

    invoke-direct {v2, v4, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_36b

    :cond_3c6
    :try_start_3c6
    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    :try_end_3c9
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3c6 .. :try_end_3c9} :catch_3cb

    move-result-object v2

    goto :goto_374

    :catch_3cb
    move-exception v4

    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v7, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v8, "CertPathReviewer.crlAuthInfoAccError"

    invoke-direct {v4, v7, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_374

    :cond_3dd
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v13, "CertPathReviewer.crlDistPoint"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v16, v14, v15

    invoke-direct {v2, v4, v13, v14}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_384

    :cond_3fd
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v13, "CertPathReviewer.ocspLocation"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v16, v14, v15

    invoke-direct {v2, v4, v13, v14}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_38e

    :cond_41e
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_220

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.certWrongIssuer"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-direct {v1, v2, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_220

    :cond_44f
    if-nez v3, :cond_48a

    :cond_451
    :goto_451
    :try_start_451
    sget-object v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v1

    if-nez v1, :cond_4a2

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.noBasicConstraints"

    invoke-direct {v1, v2, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_46d
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_451 .. :try_end_46d} :catch_4b9

    :cond_46d
    :goto_46d
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v1

    if-eqz v1, :cond_226

    const/4 v2, 0x5

    aget-boolean v1, v1, v2

    if-nez v1, :cond_226

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.noCertSign"

    invoke-direct {v1, v2, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_226

    :cond_48a
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_451

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.noCACert"

    invoke-direct {v1, v2, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_451

    :cond_4a2
    :try_start_4a2
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    if-nez v1, :cond_46d

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.noCACert"

    invoke-direct {v1, v2, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_4b8
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4a2 .. :try_end_4b8} :catch_4b9

    goto :goto_46d

    :catch_4b9
    move-exception v1

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.errorProcesingBC"

    invoke-direct {v1, v2, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_46d

    :catch_4cb
    move-exception v2

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.pubKeyError"

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_23c

    :catch_4de
    move-exception v1

    move-object v3, v2

    goto/16 :goto_129

    :catch_4e2
    move-exception v1

    goto/16 :goto_7c
.end method

.method private getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    :cond_15
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_76

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_38} :catch_38

    :catch_38
    move-exception v0

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v3, "CertPathReviewer.loadCrlDistPointError"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v5, p1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v0

    :cond_68
    :try_start_68
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :goto_75
    return-object v0

    :cond_76
    const-string/jumbo v1, "X.509"

    const-string/jumbo v2, "BC"

    invoke-static {v1, v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_8a} :catch_38

    goto :goto_75
.end method

.method private processQcStatements(Ljava/security/cert/X509Certificate;I)Z
    .registers 16

    const/4 v2, 0x0

    :try_start_1
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    move v3, v1

    move v1, v2

    :goto_c
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-lt v3, v2, :cond_16

    if-eqz v1, :cond_12a

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/QCStatement;

    move-result-object v2

    sget-object v4, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcCompliance:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    sget-object v4, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_qcs_pkixQCSyntax_v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    sget-object v4, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcSSCD:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_93

    sget-object v4, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_LimiteValue:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a2

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.QcUnknownStatement"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v8, v2}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    invoke-direct {v1, v4, v5, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    const/4 v1, 0x1

    :cond_6f
    :goto_6f
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_c

    :cond_73
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.QcEuCompliance"

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_81
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_81} :catch_82

    goto :goto_6f

    :catch_82
    move-exception v0

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v2, "CertPathReviewer.QcStatementExtError"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    const/4 v0, 0x0

    return v0

    :cond_93
    :try_start_93
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.QcSSCD"

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_6f

    :cond_a2
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getAmount()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->isAlphabetic()Z

    move-result v2

    if-nez v2, :cond_100

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v8, "CertPathReviewer.QcLimitValueNum"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getNumeric()I

    move-result v11

    invoke-static {v11}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lorg/bouncycastle/i18n/filter/TrustedInput;

    new-instance v12, Ljava/lang/Double;

    invoke-direct {v12, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v11, v12}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v11, v9, v10

    const/4 v6, 0x2

    aput-object v4, v9, v6

    invoke-direct {v2, v5, v8, v9}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_fb
    invoke-virtual {p0, v2, p2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_6f

    :cond_100
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v8, "CertPathReviewer.QcLimitValueAlpha"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getAlphabetic()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lorg/bouncycastle/i18n/filter/TrustedInput;

    new-instance v12, Ljava/lang/Double;

    invoke-direct {v12, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v11, v12}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v11, v9, v10

    const/4 v6, 0x2

    aput-object v4, v9, v6

    invoke-direct {v2, v5, v8, v9}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_129
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_93 .. :try_end_129} :catch_82

    goto :goto_fb

    :cond_12a
    const/4 v0, 0x1

    goto/16 :goto_15
.end method


# virtual methods
.method protected addError(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    .registers 5

    const/4 v0, -0x1

    if-ge p2, v0, :cond_9

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_9
    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    .registers 5

    const/4 v0, -0x1

    if-ge p2, v0, :cond_9

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_9
    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    new-instance v4, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    :try_start_5
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_3b

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    :try_start_15
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_UTIL:Lorg/bouncycastle/jce/provider/PKIXCRLUtil;

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Lorg/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z
    :try_end_24
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_15 .. :try_end_24} :catch_9c

    move-result v2

    if-nez v2, :cond_4d

    :goto_27
    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_ec

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_32
    if-eqz v2, :cond_163

    move-object v3, v4

    move v4, v2

    :goto_36
    if-nez v3, :cond_25c

    :cond_38
    if-eqz v4, :cond_4fd

    return-void

    :catch_3b
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.crlIssuerException"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :cond_4d
    :try_start_4d
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_UTIL:Lorg/bouncycastle/jce/provider/PKIXCRLUtil;

    new-instance v5, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v5}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0}, Lorg/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_63
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_dd

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    new-instance v5, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v7, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v8, "CertPathReviewer.noCrlInCertstore"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v11, v4}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v11, v9, v10

    const/4 v4, 0x1

    new-instance v10, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v10, v6}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v10, v9, v4

    const/4 v4, 0x2

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v4

    invoke-direct {v5, v7, v8, v9}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, p7

    invoke-virtual {p0, v5, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_9b
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4d .. :try_end_9b} :catch_9c

    goto :goto_27

    :catch_9c
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.crlExtractionError"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-direct {v3, v4, v5, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, p7

    invoke-virtual {p0, v3, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_27

    :cond_dd
    :try_start_dd
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ea
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_dd .. :try_end_ea} :catch_9c

    goto/16 :goto_63

    :cond_ec
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v5

    if-nez v5, :cond_128

    :cond_f8
    const/4 v3, 0x1

    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v6, "CertPathReviewer.localValidCRL"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, p7

    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    move-object v4, v2

    move v2, v3

    goto/16 :goto_32

    :cond_128
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_f8

    new-instance v5, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v7, "CertPathReviewer.localInvalidCRL"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, p7

    invoke-virtual {p0, v5, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_29

    :cond_163
    invoke-virtual/range {p6 .. p6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_167
    move v3, v2

    :cond_168
    :goto_168
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_173

    move v14, v3

    move-object v3, v4

    move v4, v14

    goto/16 :goto_36

    :cond_173
    :try_start_173
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v5

    if-eqz v5, :cond_168

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v5}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1cb

    invoke-virtual {v5}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v7

    if-nez v7, :cond_217

    :cond_193
    const/4 v3, 0x1

    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v8, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v9, "CertPathReviewer.onlineValidCRL"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v5}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v5}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-instance v12, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    invoke-direct {v12, v2}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    invoke-direct {v7, v8, v9, v10}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, p7

    invoke-virtual {p0, v7, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    move v4, v3

    move-object v3, v5

    goto/16 :goto_36

    :cond_1cb
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v8, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v9, "CertPathReviewer.onlineCRLWrongCA"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v5}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    const/4 v5, 0x1

    new-instance v11, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v11, v10, v5

    const/4 v5, 0x2

    new-instance v11, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    invoke-direct {v11, v2}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v11, v10, v5

    invoke-direct {v7, v8, v9, v10}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, p7

    invoke-virtual {p0, v7, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_206
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_173 .. :try_end_206} :catch_208

    goto/16 :goto_168

    :catch_208
    move-exception v2

    move-object v14, v2

    move v2, v3

    move-object v3, v14

    invoke-virtual {v3}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {p0, v3, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_167

    :cond_217
    :try_start_217
    iget-object v7, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v7}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_193

    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v8, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v9, "CertPathReviewer.onlineInvalidCRL"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v5}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v5}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-direct {v12, v5}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    const/4 v5, 0x2

    new-instance v11, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    invoke-direct {v11, v2}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v11, v10, v5

    invoke-direct {v7, v8, v9, v10}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, p7

    invoke-virtual {p0, v7, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_25a
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_217 .. :try_end_25a} :catch_208

    goto/16 :goto_168

    :cond_25c
    if-nez p4, :cond_271

    :cond_25e
    :goto_25e
    if-nez p5, :cond_292

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.crlNoIssuerPublicKey"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v3

    :cond_271
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v2

    if-eqz v2, :cond_25e

    array-length v5, v2

    const/4 v6, 0x7

    if-ge v5, v6, :cond_28c

    :cond_27b
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.noCrlSigningPermited"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v3

    :cond_28c
    const/4 v5, 0x6

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_27b

    goto :goto_25e

    :cond_292
    :try_start_292
    const-string/jumbo v2, "BC"

    move-object/from16 v0, p5

    invoke-virtual {v3, v0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_292 .. :try_end_29a} :catch_2fd

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v5

    if-nez v5, :cond_30f

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v6, "CertPathReviewer.notRevoked"

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :goto_2b4
    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3a8

    :cond_2ba
    :goto_2ba
    :try_start_2ba
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_2bf
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2ba .. :try_end_2bf} :catch_3d9

    move-result-object v5

    :try_start_2c0
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_2c5
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2c0 .. :try_end_2c5} :catch_3eb

    move-result-object v2

    if-nez v2, :cond_3fd

    :cond_2c8
    if-eqz v5, :cond_38

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2

    :try_start_2ce
    sget-object v3, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_2d9
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2ce .. :try_end_2d9} :catch_4b7

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v5

    if-nez v5, :cond_4c9

    :cond_2e0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v5

    if-nez v5, :cond_4e2

    :goto_2e6
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v2

    if-eqz v2, :cond_38

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.crlOnlyAttrCert"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v3

    :catch_2fd
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.crlVerifyFailed"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :cond_30f
    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v6

    if-nez v6, :cond_350

    :cond_316
    :goto_316
    if-eqz v2, :cond_37f

    :goto_318
    new-instance v6, Lorg/bouncycastle/i18n/LocaleString;

    const-string/jumbo v7, "org.bouncycastle.x509.CertPathReviewerMessages"

    invoke-direct {v6, v7, v2}, Lorg/bouncycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_385

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v7, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v8, "CertPathReviewer.revokedAfterValidation"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v5}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v5

    invoke-direct {v11, v5}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v11, v9, v10

    const/4 v5, 0x1

    aput-object v6, v9, v5

    invoke-direct {v2, v7, v8, v9}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_2b4

    :cond_350
    :try_start_350
    sget-object v6, Lorg/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;
    :try_end_35d
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_350 .. :try_end_35d} :catch_36d

    move-result-object v6

    if-eqz v6, :cond_316

    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    aget-object v2, v2, v6

    goto :goto_316

    :catch_36d
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.crlReasonExtError"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :cond_37f
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v2, v2, v6

    goto :goto_318

    :cond_385
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.certRevoked"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v5}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v5

    invoke-direct {v9, v5}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const/4 v5, 0x1

    aput-object v6, v7, v5

    invoke-direct {v2, v3, v4, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v3

    :cond_3a8
    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v2

    iget-object v5, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2ba

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v6, "CertPathReviewer.crlUpdateAvailable"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    invoke-direct {v2, v5, v6, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_2ba

    :catch_3d9
    move-exception v2

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.distrPtExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v3

    :catch_3eb
    move-exception v2

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.deltaCrlExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v3

    :cond_3fd
    new-instance v6, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v6}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    :try_start_402
    invoke-static {v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_40d
    .catch Ljava/io/IOException; {:try_start_402 .. :try_end_40d} :catch_456

    check-cast v2, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    :try_start_416
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V
    :try_end_42f
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_416 .. :try_end_42f} :catch_468

    const/4 v3, 0x0

    :try_start_430
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_UTIL:Lorg/bouncycastle/jce/provider/PKIXCRLUtil;

    move-object/from16 v0, p1

    invoke-virtual {v2, v6, v0}, Lorg/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_43b
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_430 .. :try_end_43b} :catch_47a

    move-result-object v6

    :cond_43c
    :goto_43c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_48c

    move v2, v3

    :goto_443
    if-nez v2, :cond_2c8

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.noBaseCRL"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v3

    :catch_456
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.crlIssuerException"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :catch_468
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.crlNbrExtError"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :catch_47a
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.crlExtractionError"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :cond_48c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    :try_start_492
    sget-object v7, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v2, v7}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_497
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_492 .. :try_end_497} :catch_4a2

    move-result-object v2

    if-eqz v5, :cond_4b4

    invoke-virtual {v5, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43c

    :cond_4a0
    const/4 v2, 0x1

    goto :goto_443

    :catch_4a2
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.distrPtExtError"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :cond_4b4
    if-eqz v2, :cond_4a0

    goto :goto_43c

    :catch_4b7
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v5, "CertPathReviewer.crlBCExtError"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :cond_4c9
    if-eqz v3, :cond_2e0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v5

    if-eqz v5, :cond_2e0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.crlOnlyUserCert"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v3

    :cond_4e2
    if-nez v3, :cond_4f5

    :cond_4e4
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.crlOnlyCaCert"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v3

    :cond_4f5
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v3

    if-eqz v3, :cond_4e4

    goto/16 :goto_2e6

    :cond_4fd
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v4, "CertPathReviewer.noValidCrlFound"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v3
.end method

.method protected checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V

    return-void
.end method

.method protected doChecks()V
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->initialized:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    if-eqz v1, :cond_13

    :goto_9
    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Object not initialized. Call init() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    iget v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    :goto_23
    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    array-length v1, v1

    if-lt v0, v1, :cond_38

    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkSignatures()V

    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkNameConstraints()V

    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkPathLength()V

    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkPolicy()V

    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkCriticalExtensions()V

    goto :goto_9

    :cond_38
    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23
.end method

.method protected getCRLDistUrls(Lorg/bouncycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;
    .registers 10

    const/4 v2, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    if-nez p1, :cond_9

    :cond_8
    return-object v4

    :cond_9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v5

    move v1, v2

    :goto_e
    array-length v0, v5

    if-ge v1, v0, :cond_8

    aget-object v0, v5, v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    if-eqz v3, :cond_21

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_21
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v6

    move v3, v2

    :goto_2e
    array-length v0, v6

    if-ge v3, v0, :cond_1d

    aget-object v0, v6, v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    const/4 v7, 0x6

    if-eq v0, v7, :cond_3e

    :goto_3a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2e

    :cond_3e
    aget-object v0, v6, v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3a
.end method

.method public getCertPath()Ljava/security/cert/CertPath;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getCertPathSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    return v0
.end method

.method public getErrors(I)Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getErrors()[Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    return-object v0
.end method

.method public getNotifications(I)Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNotifications()[Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    return-object v0
.end method

.method protected getOCSPUrls(Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;
    .registers 8

    const/4 v0, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    if-nez p1, :cond_9

    :cond_8
    return-object v2

    :cond_9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getAccessDescriptions()[Lorg/bouncycastle/asn1/x509/AccessDescription;

    move-result-object v3

    move v1, v0

    :goto_e
    array-length v0, v3

    if-ge v1, v0, :cond_8

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessMethod()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v4, Lorg/bouncycastle/asn1/x509/AccessDescription;->id_ad_ocsp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_1f
    :goto_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_23
    aget-object v0, v3, v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessLocation()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1f

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1f
.end method

.method public getPolicyTree()Ljava/security/cert/PolicyNode;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method protected getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    :try_start_e
    invoke-static {p1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/cert/X509CertSelector;->setSubject([B)V

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_22} :catch_58

    move-result-object v0

    if-nez v0, :cond_2c

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6a

    return-object v1

    :cond_2c
    :try_start_2c
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_57} :catch_58

    goto :goto_25

    :catch_58
    move-exception v0

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v2, "CertPathReviewer.trustAnchorIssuerError"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v1

    :cond_6a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-nez v4, :cond_99

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-static {p1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_99
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25
.end method

.method public init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->initialized:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->initialized:Z

    if-eqz p1, :cond_46

    iput-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-static {v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-void

    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "object is already initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "certPath was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    new-instance v0, Lorg/bouncycastle/x509/CertPathReviewerException;

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string/jumbo v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string/jumbo v3, "CertPathReviewer.emptyCertPath"

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v0
.end method

.method public isValidCertPath()Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    const/4 v2, 0x1

    move v0, v1

    :goto_6
    iget-object v3, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    array-length v3, v3

    if-lt v0, v3, :cond_d

    move v1, v2

    :cond_c
    return v1

    :cond_d
    iget-object v3, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method
