.class public Lorg/bouncycastle/asn1/eac/CVCertificateRequest;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# static fields
.field public static ZeroArray:[B

.field private static bodyValid:I

.field private static signValid:I


# instance fields
.field ProfileId:I

.field certificate:[B

.field private certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

.field encoded:[B

.field encodedAuthorityReference:[B

.field private innerSignature:[B

.field iso7816PubKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

.field keyOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private outerSignature:[B

.field protected overSignerReference:Ljava/lang/String;

.field signOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field strCertificateHolderReference:Ljava/lang/String;

.field private valid:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput v2, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->bodyValid:I

    const/4 v0, 0x2

    sput v0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->signValid:I

    new-array v0, v2, [B

    aput-byte v1, v0, v1

    sput-object v0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->ZeroArray:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->innerSignature:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->outerSignature:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->signOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->keyOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->certificate:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->overSignerReference:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->iso7816PubKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1e

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->initCertBody(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V

    :goto_1d
    return-void

    :cond_1e
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getObject(I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERApplicationSpecific;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->initCertBody(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERApplicationSpecific;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->outerSignature:[B

    goto :goto_1d
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CVCertificateRequest;
    .registers 5

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    if-nez v0, :cond_8

    if-nez p0, :cond_b

    return-object v1

    :cond_8
    check-cast p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    return-object p0

    :cond_b
    :try_start_b
    new-instance v0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    invoke-static {p0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERApplicationSpecific;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;-><init>(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initCertBody(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_26

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not a CARDHOLDER_CERTIFICATE in request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getObject(I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_3b

    return-void

    :cond_3b
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERApplicationSpecific;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_82

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid tag, not an CV Certificate Request element:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_68
    invoke-static {v1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CertificateBody;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    iget v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->valid:I

    sget v2, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->bodyValid:I

    :goto_72
    or-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->valid:I

    goto :goto_34

    :sswitch_76
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->innerSignature:[B

    iget v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->valid:I

    sget v2, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->signValid:I

    goto :goto_72

    nop

    :sswitch_data_82
    .sparse-switch
        0x37 -> :sswitch_76
        0x4e -> :sswitch_68
    .end sparse-switch
.end method


# virtual methods
.method public getCertificateBody()Lorg/bouncycastle/asn1/eac/CertificateBody;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    return-object v0
.end method

.method public getInnerSignature()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->innerSignature:[B

    return-object v0
.end method

.method public getOuterSignature()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->outerSignature:[B

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getPublicKey()Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    move-result-object v0

    return-object v0
.end method

.method public hasOuterSignature()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->outerSignature:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :try_start_a
    new-instance v1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/16 v2, 0x37

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v4, p0, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->innerSignature:[B

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1c} :catch_24

    new-instance v1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/16 v2, 0x21

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ILorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :catch_24
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unable to convert signature!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
