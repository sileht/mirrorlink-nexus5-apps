.class public Lorg/bouncycastle/x509/examples/AttrCertExample;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field static v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

.field static v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;-><init>()V

    sput-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v0, Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    sput-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAcIssuerCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide v6, 0x9a7ec800L

    const-string/jumbo v0, "C=AU, O=The Legion of the Bouncy Castle, OU=Bouncy Primary Certificate"

    const-string/jumbo v1, "C=AU, O=The Legion of the Bouncy Castle, OU=Bouncy Primary Certificate"

    sget-object v2, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    sget-object v2, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v3, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v3, v0}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setIssuerDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    new-instance v2, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v2, v1}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setSubjectDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    const-string/jumbo v1, "SHA1WithRSAEncryption"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    invoke-virtual {v0, p0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    return-object v0
.end method

.method public static createClientCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide v6, 0x9a7ec800L

    const-string/jumbo v0, "C=AU, O=The Legion of the Bouncy Castle, OU=Bouncy Primary Certificate"

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v4, "AU"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v4, "The Legion of the Bouncy Castle"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->L:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v4, "Melbourne"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->CN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v4, "Eric H. Echidna"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v4, "feedback-crypto@bouncycastle.org"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->O:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->L:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->CN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v3, Lorg/bouncycastle/jce/X509Principal;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v3, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->reset()V

    sget-object v3, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    sget-object v3, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v4, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v4, v0}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    new-instance v3, Lorg/bouncycastle/jce/X509Principal;

    invoke-direct {v3, v2, v1}, Lorg/bouncycastle/jce/X509Principal;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Lorg/bouncycastle/asn1/x509/X509Name;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    const-string/jumbo v1, "SHA1WithRSAEncryption"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    sget-object v1, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/misc/NetscapeCertType;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/misc/NetscapeCertType;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v0, Lorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    invoke-virtual {v0, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    new-instance v10, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "b4a7e46170574f16a97082b22be58b6a2a629798419be12872a4bdba626cfae9900f76abfb12139dce5de56564fab2b6543165a040c606887420e33d91ed7ed7"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "11"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v10, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

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

    const/16 v11, 0x10

    invoke-direct {v8, v9, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v11, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "b259d2d6e627a768c94be36164c2d9fc79d97aab9253140e5bf17751197731d6f7540d2509e7b9ffee0a70a6e26d56e92d2edd7f85aba85600b69089f35f6bdbf3c298e05842535d9f064e6b0391cb7d306e0a2d20c4dfb4e7b49a9640bdea26c10ad69c3f05007ce2513cee44cfe01998e62b6c3637d3fc0391079b26ee36d5"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v3, "11"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v11, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v3, "b259d2d6e627a768c94be36164c2d9fc79d97aab9253140e5bf17751197731d6f7540d2509e7b9ffee0a70a6e26d56e92d2edd7f85aba85600b69089f35f6bdbf3c298e05842535d9f064e6b0391cb7d306e0a2d20c4dfb4e7b49a9640bdea26c10ad69c3f05007ce2513cee44cfe01998e62b6c3637d3fc0391079b26ee36d5"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "11"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "92e08f83cc9920746989ca5034dcb384a094fb9c5a6288fcc4304424ab8f56388f72652d8fafc65a4b9020896f2cde297080f2a540e7b7ce5af0b3446e1258d1dd7f245cf54124b4c6e17da21b90a0ebd22605e6f45c9f136d7a13eaac1c0f7487de8bd6d924972408ebb58af71e76fd7b012a8d0e165f3ae2e5077a8648e619"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string/jumbo v6, "f75e80839b9b9379f1cf1128f321639757dba514642c206bbbd99f9a4846208b3e93fbbe5e0527cc59b1d4b929d9555853004c7c8b30ee6a213c3d1bb7415d03"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "b892d9ebdbfc37e397256dd8a5d3123534d1f03726284743ddc6be3a709edb696fc40c7d902ed804c6eee730eee3d5b20bf6bd8d87a296813c87d3b3cc9d7947"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string/jumbo v8, "1d1a2d3ca8e52068b3094d501c9a842fec37f54db16e9a67070a8b3f53cc03d4257ad252a1a640eadd603724d7bf3737914b544ae332eedf4f34436cac25ceb5"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string/jumbo v9, "6c929e4e81672fef49d9c825163fec97c4b7ba7acb26c0824638ac22605d7201c94625770984f78a56e6e25904fe7db407099cad9b14588841b94f5ab498dded"

    const/16 v12, 0x10

    invoke-direct {v8, v9, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string/jumbo v12, "dae7651ee69ad1d081ec5e7188ae126f6004ff39556bde90e0b870962fa7b926d070686d8244fe5a9aa709a95686a104614834b0ada4b10f53197a5cb4c97339"

    const/16 v13, 0x10

    invoke-direct {v9, v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string/jumbo v2, "RSA"

    const-string/jumbo v3, "BC"

    invoke-static {v2, v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v2, v11}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    invoke-virtual {v2, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v3, v1}, Lorg/bouncycastle/x509/examples/AttrCertExample;->createAcIssuerCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/x509/examples/AttrCertExample;->createClientCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    new-instance v0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->reset()V

    new-instance v5, Lorg/bouncycastle/x509/AttributeCertificateHolder;

    invoke-direct {v5, v4}, Lorg/bouncycastle/x509/AttributeCertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->setHolder(Lorg/bouncycastle/x509/AttributeCertificateHolder;)V

    new-instance v5, Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->setIssuer(Lorg/bouncycastle/x509/AttributeCertificateIssuer;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string/jumbo v6, "1"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xc350

    sub-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xc350

    add-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    const-string/jumbo v5, "SHA1WithRSAEncryption"

    invoke-virtual {v0, v5}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    new-instance v5, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v6, 0x1

    const-string/jumbo v7, "DAU123456789"

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v6, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/x509/X509Attribute;

    const-string/jumbo v7, "2.5.24.72"

    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v5, v7, v8}, Lorg/bouncycastle/x509/X509Attribute;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->addAttribute(Lorg/bouncycastle/x509/X509Attribute;)V

    const-string/jumbo v5, "BC"

    invoke-virtual {v0, v1, v5}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;)Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->match(Ljava/security/cert/Certificate;)Z

    move-result v4

    if-nez v4, :cond_205

    :goto_186
    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->match(Ljava/security/cert/Certificate;)Z

    move-result v2

    if-nez v2, :cond_261

    :goto_190
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "valid not before: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "valid not before: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_1ca
    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->checkValidity()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1d5} :catch_290

    :goto_1d5
    :try_start_1d5
    const-string/jumbo v1, "BC"

    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1db} :catch_298

    :goto_1db
    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getAttributes()[Lorg/bouncycastle/x509/X509Attribute;

    move-result-object v1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cert has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " attributes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_201
    array-length v2, v1

    if-lt v0, v2, :cond_2a0

    return-void

    :cond_205
    invoke-virtual {v1}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v4

    if-nez v4, :cond_21b

    :goto_20b
    invoke-virtual {v1}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v4

    if-nez v4, :cond_23a

    :goto_211
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Matches original client x509 cert"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_186

    :cond_21b
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " entity names found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_20b

    :cond_23a
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " issuer names found, serial number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_211

    :cond_261
    invoke-virtual {v1}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v2

    if-nez v2, :cond_271

    :goto_267
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Matches original ca x509 cert"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_190

    :cond_271
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " entity names found"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_267

    :catch_290
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_1d5

    :catch_298
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_1db

    :cond_2a0
    aget-object v2, v1, v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/bouncycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "2.5.24.72"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d0

    :goto_2cc
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_201

    :cond_2d0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "rolesyntax read from cert!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2cc
.end method
