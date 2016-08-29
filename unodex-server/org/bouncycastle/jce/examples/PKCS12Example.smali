.class public Lorg/bouncycastle/jce/examples/PKCS12Example;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field static passwd:[C

.field static v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

.field static v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x6f

    const/16 v3, 0x6c

    const/16 v0, 0xb

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/4 v1, 0x2

    aput-char v3, v0, v1

    const/4 v1, 0x3

    aput-char v3, v0, v1

    const/4 v1, 0x4

    aput-char v4, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x77

    aput-char v2, v0, v1

    const/4 v1, 0x7

    aput-char v4, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x9

    aput-char v3, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x64

    aput-char v2, v0, v1

    sput-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->passwd:[C

    new-instance v0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v0, Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/Certificate;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide v10, 0x9a7ec800L

    const/4 v8, 0x0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "AU"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "The Legion of the Bouncy Castle"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->OU:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "Bouncy Intermediate Certificate"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "feedback-crypto@bouncycastle.org"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->OU:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    sget-object v4, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v5, "AU"

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v5, "The Legion of the Bouncy Castle"

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jce/X509Principal;->L:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v5, "Melbourne"

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jce/X509Principal;->CN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v5, "Eric H. Echidna"

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v5, "feedback-crypto@bouncycastle.org"

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v4, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v4, Lorg/bouncycastle/jce/X509Principal;->L:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v4, Lorg/bouncycastle/jce/X509Principal;->CN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v4, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v4, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v4}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->reset()V

    sget-object v4, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    sget-object v4, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v5, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v5, v1, v0}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v10

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v1, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v1, v3, v2}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    const-string/jumbo v1, "SHA1WithRSAEncryption"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;

    invoke-direct {v2, p0}, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, v8, v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;

    invoke-direct {v2, p2}, Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, v8, v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    invoke-virtual {v1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/DERBMPString;

    const-string/jumbo v4, "Eric\'s Key"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;

    invoke-direct {v3, p0}, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1
.end method

.method public static createIntermediateCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Ljava/security/cert/Certificate;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide v8, 0x9a7ec800L

    const/4 v6, 0x0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "AU"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "The Legion of the Bouncy Castle"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->OU:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "Bouncy Intermediate Certificate"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "feedback-crypto@bouncycastle.org"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->OU:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->reset()V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-static {p2}, Lorg/bouncycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v8

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v3, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v3, v1, v0}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    const-string/jumbo v1, "SHA1WithRSAEncryption"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;

    invoke-direct {v2, p0}, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, v6, v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;

    invoke-direct {v2, p2}, Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v0, v1, v6, v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-direct {v2, v6}, Lorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/DERBMPString;

    const-string/jumbo v4, "Bouncy Intermediate Certificate"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1
.end method

.method public static createMasterCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/cert/Certificate;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide v6, 0x9a7ec800L

    const-string/jumbo v0, "C=AU, O=The Legion of the Bouncy Castle, OU=Bouncy Primary Certificate"

    const-string/jumbo v1, "C=AU, O=The Legion of the Bouncy Castle, OU=Bouncy Primary Certificate"

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v3, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v3, v0}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setIssuerDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v2, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v2, v1}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setSubjectDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    const-string/jumbo v1, "SHA1WithRSAEncryption"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    invoke-virtual {v1, p0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/DERBMPString;

    const-string/jumbo v4, "Bouncy Primary Certificate"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    new-instance v11, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "b4a7e46170574f16a97082b22be58b6a2a629798419be12872a4bdba626cfae9900f76abfb12139dce5de56564fab2b6543165a040c606887420e33d91ed7ed7"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "11"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v11, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "b4a7e46170574f16a97082b22be58b6a2a629798419be12872a4bdba626cfae9900f76abfb12139dce5de56564fab2b6543165a040c606887420e33d91ed7ed7"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v3, "11"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "9f66f6b05410cd503b2709e88115d55daced94d1a34d4e32bf824d0dde6028ae79c5f07b580f5dce240d7111f7ddb130a7945cd7d957d1920994da389f490c89"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "c0a0758cdf14256f78d4708c86becdead1b50ad4ad6c5c703e2168fbf37884cb"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string/jumbo v6, "f01734d7960ea60070f1b06f2bb81bfac48ff192ae18451d5e56c734a5aab8a5"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "b54bb9edff22051d9ee60f9351a48591b6500a319429c069a3e335a1d6171391"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string/jumbo v8, "d3d83daf2a0cecd3367ae6f8ae1aeb82e9ac2f816c6fc483533d8297dd7884cd"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string/jumbo v9, "b8f52fc6f38593dabb661d3f50f8897f8106eee68b1bce78a95b132b4e5b5d19"

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v12, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "8de0d113c5e736969c8d2b047a243f8fe18edad64cde9e842d3669230ca486f7cfdde1f8eec54d1905fff04acc85e61093e180cadc6cea407f193d44bb0e9449b8dbb49784cd9e36260c39e06a947299978c6ed8300724e887198cfede20f3fbde658fa2bd078be946a392bd349f2b49c486e20c405588e306706c9017308e69"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v3, "ffff"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v12, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v3, "8de0d113c5e736969c8d2b047a243f8fe18edad64cde9e842d3669230ca486f7cfdde1f8eec54d1905fff04acc85e61093e180cadc6cea407f193d44bb0e9449b8dbb49784cd9e36260c39e06a947299978c6ed8300724e887198cfede20f3fbde658fa2bd078be946a392bd349f2b49c486e20c405588e306706c9017308e69"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "ffff"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "7deb1b194a85bcfd29cf871411468adbc987650903e3bacc8338c449ca7b32efd39ffc33bc84412fcd7df18d23ce9d7c25ea910b1ae9985373e0273b4dca7f2e0db3b7314056ac67fd277f8f89cf2fd73c34c6ca69f9ba477143d2b0e2445548aa0b4a8473095182631da46844c356f5e5c7522eb54b5a33f11d730ead9c0cff"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string/jumbo v6, "ef4cede573cea47f83699b814de4302edb60eefe426c52e17bd7870ec7c6b7a24fe55282ebb73775f369157726fcfb988def2b40350bdca9e5b418340288f649"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "97c7737d1b9a0088c3c7b528539247fd2a1593e7e01cef18848755be82f4a45aa093276cb0cbf118cb41117540a78f3fc471ba5d69f0042274defc9161265721"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string/jumbo v8, "6c641094e24d172728b8da3c2777e69adfd0839085be7e38c7c4a2dd00b1ae969f2ec9d23e7e37090fcd449a40af0ed463fe1c612d6810d6b4f58b7bfa31eb5f"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string/jumbo v9, "70b7123e8e69dfa76feb1236d0a686144b00e9232ed52b73847e74ef3af71fb45ccb24261f40d27f98101e230cf27b977a5d5f1f15f6cf48d5cb1da2a3a3b87f"

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string/jumbo v10, "e38f5750d97e270996a286df2e653fd26c242106436f5bab0f4c7a9e654ce02665d5a281f2c412456f2d1fa26586ef04a9adac9004ca7f913162cb28e13bf40d"

    const/16 v13, 0x10

    invoke-direct {v9, v10, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v13, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v3, "b259d2d6e627a768c94be36164c2d9fc79d97aab9253140e5bf17751197731d6f7540d2509e7b9ffee0a70a6e26d56e92d2edd7f85aba85600b69089f35f6bdbf3c298e05842535d9f064e6b0391cb7d306e0a2d20c4dfb4e7b49a9640bdea26c10ad69c3f05007ce2513cee44cfe01998e62b6c3637d3fc0391079b26ee36d5"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "11"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v13, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Ljava/security/spec/RSAPrivateCrtKeySpec;

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "b259d2d6e627a768c94be36164c2d9fc79d97aab9253140e5bf17751197731d6f7540d2509e7b9ffee0a70a6e26d56e92d2edd7f85aba85600b69089f35f6bdbf3c298e05842535d9f064e6b0391cb7d306e0a2d20c4dfb4e7b49a9640bdea26c10ad69c3f05007ce2513cee44cfe01998e62b6c3637d3fc0391079b26ee36d5"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "11"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string/jumbo v6, "92e08f83cc9920746989ca5034dcb384a094fb9c5a6288fcc4304424ab8f56388f72652d8fafc65a4b9020896f2cde297080f2a540e7b7ce5af0b3446e1258d1dd7f245cf54124b4c6e17da21b90a0ebd22605e6f45c9f136d7a13eaac1c0f7487de8bd6d924972408ebb58af71e76fd7b012a8d0e165f3ae2e5077a8648e619"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "f75e80839b9b9379f1cf1128f321639757dba514642c206bbbd99f9a4846208b3e93fbbe5e0527cc59b1d4b929d9555853004c7c8b30ee6a213c3d1bb7415d03"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string/jumbo v8, "b892d9ebdbfc37e397256dd8a5d3123534d1f03726284743ddc6be3a709edb696fc40c7d902ed804c6eee730eee3d5b20bf6bd8d87a296813c87d3b3cc9d7947"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string/jumbo v9, "1d1a2d3ca8e52068b3094d501c9a842fec37f54db16e9a67070a8b3f53cc03d4257ad252a1a640eadd603724d7bf3737914b544ae332eedf4f34436cac25ceb5"

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string/jumbo v10, "6c929e4e81672fef49d9c825163fec97c4b7ba7acb26c0824638ac22605d7201c94625770984f78a56e6e25904fe7db407099cad9b14588841b94f5ab498dded"

    const/16 v14, 0x10

    invoke-direct {v9, v10, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    const-string/jumbo v14, "dae7651ee69ad1d081ec5e7188ae126f6004ff39556bde90e0b870962fa7b926d070686d8244fe5a9aa709a95686a104614834b0ada4b10f53197a5cb4c97339"

    const/16 v15, 0x10

    invoke-direct {v10, v14, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v2 .. v10}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string/jumbo v3, "RSA"

    const-string/jumbo v4, "BC"

    invoke-static {v3, v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v3, v13}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v3, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5

    invoke-virtual {v3, v12}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v3, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v3, v11}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/security/cert/Certificate;

    const/4 v0, 0x2

    invoke-static {v4, v2}, Lorg/bouncycastle/jce/examples/PKCS12Example;->createMasterCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/cert/Certificate;

    move-result-object v4

    aput-object v4, v7, v0

    const/4 v4, 0x1

    const/4 v0, 0x2

    aget-object v0, v7, v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {v6, v2, v0}, Lorg/bouncycastle/jce/examples/PKCS12Example;->createIntermediateCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Ljava/security/cert/Certificate;

    move-result-object v0

    aput-object v0, v7, v4

    const/4 v0, 0x0

    invoke-static {v3, v5, v6}, Lorg/bouncycastle/jce/examples/PKCS12Example;->createCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/Certificate;

    move-result-object v2

    aput-object v2, v7, v0

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/DERBMPString;

    const-string/jumbo v5, "Eric\'s Key"

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;

    invoke-direct {v4, v3}, Lorg/bouncycastle/x509/extension/SubjectKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    invoke-interface {v0, v2, v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string/jumbo v0, "PKCS12"

    const-string/jumbo v2, "BC"

    invoke-static {v0, v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string/jumbo v2, "Eric\'s Key"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v7}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    new-instance v1, Ljava/io/FileOutputStream;

    const-string/jumbo v2, "id.p12"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/bouncycastle/jce/examples/PKCS12Example;->passwd:[C

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
