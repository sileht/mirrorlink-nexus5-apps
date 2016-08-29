.class public Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private responderID:Lorg/bouncycastle/ocsp/RespID;

.field private responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    new-instance v0, Lorg/bouncycastle/ocsp/RespID;

    invoke-direct {v0, p1}, Lorg/bouncycastle/ocsp/RespID;-><init>(Ljava/security/PublicKey;)V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responderID:Lorg/bouncycastle/ocsp/RespID;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/ocsp/RespID;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    iput-object p1, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responderID:Lorg/bouncycastle/ocsp/RespID;

    return-void
.end method

.method private generateResponse(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/BasicOCSPResp;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :try_start_8
    invoke-static {p1}, Lorg/bouncycastle/ocsp/OCSPUtil;->getAlgorithmOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_5c

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_66

    new-instance v3, Lorg/bouncycastle/asn1/ocsp/ResponseData;

    iget-object v0, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responderID:Lorg/bouncycastle/ocsp/RespID;

    invoke-virtual {v0}, Lorg/bouncycastle/ocsp/RespID;->toASN1Object()Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v0

    new-instance v6, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v6, p4}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v5, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v3, v0, v6, v7, v5}, Lorg/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponderID;Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    :try_start_2e
    invoke-static {p1, p5}, Lorg/bouncycastle/ocsp/OCSPUtil;->createSignatureInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    if-nez p6, :cond_7e

    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_37
    .catch Ljava/security/NoSuchProviderException; {:try_start_2e .. :try_end_37} :catch_82
    .catch Ljava/security/GeneralSecurityException; {:try_start_2e .. :try_end_37} :catch_84

    :goto_37
    :try_start_37
    const-string/jumbo v5, "DER"

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/Signature;->update([B)V

    new-instance v5, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4a} :catch_9f

    invoke-static {v4}, Lorg/bouncycastle/ocsp/OCSPUtil;->getSigAlgID(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    if-nez p3, :cond_ba

    :cond_50
    move-object v0, v2

    :goto_51
    new-instance v1, Lorg/bouncycastle/ocsp/BasicOCSPResp;

    new-instance v2, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponseData;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/ocsp/BasicOCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V

    return-object v1

    :catch_5c
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown signing algorithm specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    :try_start_66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    invoke-virtual {v0}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->toResponse()Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_73} :catch_74

    goto :goto_11

    :catch_74
    move-exception v0

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPException;

    const-string/jumbo v2, "exception creating Request"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_7e
    :try_start_7e
    invoke-virtual {v0, p2, p6}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    :try_end_81
    .catch Ljava/security/NoSuchProviderException; {:try_start_7e .. :try_end_81} :catch_82
    .catch Ljava/security/GeneralSecurityException; {:try_start_7e .. :try_end_81} :catch_84

    goto :goto_37

    :catch_82
    move-exception v0

    throw v0

    :catch_84
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

    :catch_9f
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

    :cond_ba
    array-length v0, p3

    if-lez v0, :cond_50

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_c2
    :try_start_c2
    array-length v0, p3
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c3} :catch_e3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c2 .. :try_end_c3} :catch_ed

    if-ne v1, v0, :cond_cb

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_51

    :cond_cb
    :try_start_cb
    new-instance v6, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    aget-object v0, p3, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_df} :catch_e3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_cb .. :try_end_df} :catch_ed

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c2

    :catch_e3
    move-exception v0

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPException;

    const-string/jumbo v2, "error processing certs"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_ed
    move-exception v0

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPException;

    const-string/jumbo v2, "error encoding certs"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public addResponse(Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;)V
    .registers 11

    const/4 v5, 0x0

    iget-object v7, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;-><init>(Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResponse(Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 14

    iget-object v7, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;-><init>(Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResponse(Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 13

    iget-object v7, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;-><init>(Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResponse(Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 12

    iget-object v7, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;-><init>(Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;Lorg/bouncycastle/ocsp/CertificateID;Lorg/bouncycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;)Lorg/bouncycastle/ocsp/BasicOCSPResp;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/BasicOCSPResp;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/BasicOCSPResp;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-direct/range {p0 .. p6}, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->generateResponse(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/ocsp/BasicOCSPResp;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "no signing algorithm specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .registers 2

    invoke-static {}, Lorg/bouncycastle/ocsp/OCSPUtil;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setResponseExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/ocsp/BasicOCSPRespGenerator;->responseExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-void
.end method
