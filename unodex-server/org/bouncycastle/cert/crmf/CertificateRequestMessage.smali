.class public Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final popKeyAgreement:I = 0x3

.field public static final popKeyEncipherment:I = 0x2

.field public static final popRaVerified:I = 0x0

.field public static final popSigningKey:I = 0x1


# instance fields
.field private final certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

.field private final controls:Lorg/bouncycastle/asn1/crmf/Controls;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getCertReq()Lorg/bouncycastle/asn1/crmf/CertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertRequest;->getControls()Lorg/bouncycastle/asn1/crmf/Controls;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/bouncycastle/asn1/crmf/Controls;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->parseBytes([B)Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;-><init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V

    return-void
.end method

.method private findControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/bouncycastle/asn1/crmf/Controls;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/bouncycastle/asn1/crmf/Controls;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/Controls;->toAttributeTypeAndValueArray()[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object v2

    :goto_c
    array-length v3, v2

    if-ne v0, v3, :cond_12

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    return-object v1

    :cond_12
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    aget-object v0, v2, v0

    goto :goto_10
.end method

.method private static parseBytes([B)Lorg/bouncycastle/asn1/crmf/CertReqMsg;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMsg;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_28

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "malformed data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_28
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "malformed data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private verifySignature(Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/asn1/crmf/POPOSigningKey;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;
    :try_end_7
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_7} :catch_28

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getCertReq()Lorg/bouncycastle/asn1/crmf/CertRequest;

    move-result-object v1

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/io/OutputStream;)V

    :goto_1b
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getSignature()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v0

    return v0

    :catch_28
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to create verifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_47
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/io/OutputStream;)V

    goto :goto_1b
.end method


# virtual methods
.method public getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getCertReq()Lorg/bouncycastle/asn1/crmf/CertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertRequest;->getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    return-object v0
.end method

.method public getControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/cert/crmf/Control;
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->findControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    return-object v3

    :cond_8
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_pkiArchiveOptions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_regToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_authenticator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lorg/bouncycastle/cert/crmf/AuthenticatorControl;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/cert/crmf/AuthenticatorControl;-><init>(Lorg/bouncycastle/asn1/DERUTF8String;)V

    return-object v1

    :cond_3a
    new-instance v1, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;-><init>(Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;)V

    return-object v1

    :cond_48
    new-instance v1, Lorg/bouncycastle/cert/crmf/RegTokenControl;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/cert/crmf/RegTokenControl;-><init>(Lorg/bouncycastle/asn1/DERUTF8String;)V

    return-object v1
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getProofOfPossessionType()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v0

    return v0
.end method

.method public hasControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->findControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public hasControls()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/bouncycastle/asn1/crmf/Controls;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hasProofOfPossession()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public hasSigningKeyProofOfPossessionWithPKMAC()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v3

    if-eq v3, v1, :cond_f

    return v0

    :cond_f
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOSigningKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->getPublicKeyMAC()Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object v2

    if-nez v2, :cond_22

    :goto_21
    return v0

    :cond_22
    move v0, v1

    goto :goto_21
.end method

.method public isValidSigningKeyPOP(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not Signing Key type of proof of possession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOSigningKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    if-nez v1, :cond_29

    :cond_24
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->verifySignature(Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/asn1/crmf/POPOSigningKey;)Z

    move-result v0

    return v0

    :cond_29
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->getPublicKeyMAC()Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object v1

    if-eqz v1, :cond_24

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "verification requires password check"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidSigningKeyPOP(Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/cert/crmf/PKMACBuilder;[C)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not Signing Key type of proof of possession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOSigningKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    if-nez v1, :cond_2e

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no PKMAC present in proof of possession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->getSender()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->getPublicKeyMAC()Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/cert/crmf/PKMACValueVerifier;

    invoke-direct {v2, p2}, Lorg/bouncycastle/cert/crmf/PKMACValueVerifier;-><init>(Lorg/bouncycastle/cert/crmf/PKMACBuilder;)V

    invoke-virtual {p0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getPublicKey()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    invoke-virtual {v2, v1, p3, v3}, Lorg/bouncycastle/cert/crmf/PKMACValueVerifier;->isValid(Lorg/bouncycastle/asn1/crmf/PKMACValue;[CLorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Z

    move-result v1

    if-nez v1, :cond_54

    return v4

    :cond_54
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->verifySignature(Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/asn1/crmf/POPOSigningKey;)Z

    move-result v0

    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/crmf/CertReqMsg;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    return-object v0
.end method
