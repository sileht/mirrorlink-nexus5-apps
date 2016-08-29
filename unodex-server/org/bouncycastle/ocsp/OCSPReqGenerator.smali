.class public Lorg/bouncycastle/ocsp/OCSPReqGenerator;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field private requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->list:Ljava/util/List;

    iput-object v1, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    iput-object v1, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-void
.end method

.method private generateRequest(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/OCSPReq;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v3, Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v4, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v3, v0, v5, v4}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    if-nez p1, :cond_47

    move-object v0, v2

    :goto_24
    new-instance v1, Lorg/bouncycastle/ocsp/OCSPReq;

    new-instance v2, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;-><init>(Lorg/bouncycastle/asn1/ocsp/TBSRequest;Lorg/bouncycastle/asn1/ocsp/Signature;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/ocsp/OCSPReq;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPRequest;)V

    return-object v1

    :cond_2f
    :try_start_2f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;

    invoke-virtual {v0}, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;->toRequest()Lorg/bouncycastle/asn1/ocsp/Request;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_3d

    goto :goto_d

    :catch_3d
    move-exception v0

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPException;

    const-string/jumbo v2, "exception creating Request"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_47
    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_84

    :try_start_4b
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lorg/bouncycastle/ocsp/OCSPUtil;->createSignatureInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    if-nez p5, :cond_8d

    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_58
    .catch Ljava/security/NoSuchProviderException; {:try_start_4b .. :try_end_58} :catch_91
    .catch Ljava/security/GeneralSecurityException; {:try_start_4b .. :try_end_58} :catch_93

    :goto_58
    :try_start_58
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V

    new-instance v2, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_75} :catch_ae

    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v4, p1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-nez p3, :cond_c9

    :cond_7e
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/Signature;

    invoke-direct {v0, v4, v2}, Lorg/bouncycastle/asn1/ocsp/Signature;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;)V

    goto :goto_24

    :cond_84
    new-instance v0, Lorg/bouncycastle/ocsp/OCSPException;

    const-string/jumbo v1, "requestorName must be specified if request is signed."

    invoke-direct {v0, v1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    :try_start_8d
    invoke-virtual {v0, p2, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    :try_end_90
    .catch Ljava/security/NoSuchProviderException; {:try_start_8d .. :try_end_90} :catch_91
    .catch Ljava/security/GeneralSecurityException; {:try_start_8d .. :try_end_90} :catch_93

    goto :goto_58

    :catch_91
    move-exception v0

    throw v0

    :catch_93
    move-exception v0

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception creating signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_ae
    move-exception v0

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception processing TBSRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_c9
    array-length v0, p3

    if-lez v0, :cond_7e

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_d1
    :try_start_d1
    array-length v0, p3
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d2} :catch_f8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_d1 .. :try_end_d2} :catch_102

    if-ne v1, v0, :cond_e0

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/Signature;

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v4, v2, v1}, Lorg/bouncycastle/asn1/ocsp/Signature;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto/16 :goto_24

    :cond_e0
    :try_start_e0
    new-instance v6, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    aget-object v0, p3, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_f4} :catch_f8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_e0 .. :try_end_f4} :catch_102

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d1

    :catch_f8
    move-exception v0

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPException;

    const-string/jumbo v2, "error processing certs"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_102
    move-exception v0

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPException;

    const-string/jumbo v2, "error encoding certs"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public addRequest(Lorg/bouncycastle/ocsp/CertificateID;)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;-><init>(Lorg/bouncycastle/ocsp/OCSPReqGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRequest(Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;

    invoke-direct {v1, p0, p1, p2}, Lorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;-><init>(Lorg/bouncycastle/ocsp/OCSPReqGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public generate()Lorg/bouncycastle/ocsp/OCSPReq;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_6
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->generateRequest(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/OCSPReq;
    :try_end_9
    .catch Ljava/security/NoSuchProviderException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no provider! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/ocsp/OCSPReq;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/OCSPReq;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/OCSPReq;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_10

    :try_start_2
    invoke-static {p1}, Lorg/bouncycastle/ocsp/OCSPUtil;->getAlgorithmOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->generateRequest(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/OCSPReq;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_e} :catch_19

    move-result-object v0

    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "no signing algorithm specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_19
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown signing algorithm specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .registers 2

    invoke-static {}, Lorg/bouncycastle/ocsp/OCSPUtil;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setRequestExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-void
.end method

.method public setRequestorName(Ljavax/security/auth/x500/X500Principal;)V
    .registers 6

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v1, 0x4

    new-instance v2, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot encode principal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRequestorName(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-void
.end method
