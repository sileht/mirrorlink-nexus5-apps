.class public Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

.field private generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private pvno:Lorg/bouncycastle/asn1/ASN1Integer;

.field private recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private sender:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 8

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {p0, v0, p2, p3}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->pvno:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-void
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6

    if-nez p3, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_2
.end method

.method private static makeGeneralInfoSeq(Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method private static makeGeneralInfoSeq([Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v0, 0x0

    :goto_a
    array-length v2, p0

    if-lt v0, v2, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_3

    :cond_13
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public build()Lorg/bouncycastle/asn1/cmp/PKIHeader;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->pvno:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x6

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    return-object v0
.end method

.method public setFreeText(Lorg/bouncycastle/asn1/cmp/PKIFreeText;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    return-object p0
.end method

.method public setGeneralInfo(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object p0
.end method

.method public setGeneralInfo(Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 3

    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->makeGeneralInfoSeq(Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setGeneralInfo(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setGeneralInfo([Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 3

    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->makeGeneralInfoSeq([Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setGeneralInfo(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMessageTime(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object p0
.end method

.method public setMessageTime(Lorg/bouncycastle/asn1/DERGeneralizedTime;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 3

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object p0
.end method

.method public setProtectionAlg(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public setRecipKID(Lorg/bouncycastle/asn1/DEROctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setRecipKID([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    :cond_8
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setRecipKID(Lorg/bouncycastle/asn1/DEROctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setRecipNonce(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setRecipNonce([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    :cond_8
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setRecipNonce(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSenderKID(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setSenderKID([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    :cond_8
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setSenderKID(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSenderNonce(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setSenderNonce([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    :cond_8
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setSenderNonce(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTransactionID(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setTransactionID([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    :cond_8
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setTransactionID(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method
