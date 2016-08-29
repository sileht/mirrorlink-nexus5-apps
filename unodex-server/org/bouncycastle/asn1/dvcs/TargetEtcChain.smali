.class public Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# instance fields
.field private chain:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

.field private target:Lorg/bouncycastle/asn1/dvcs/CertEtcToken;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    const/4 v1, 0x2

    :try_start_10
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_1a} :catch_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_1a} :catch_2a

    :goto_1a
    :try_start_1a
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    :goto_29
    return-void

    :catch_2a
    move-exception v0

    return-void

    :pswitch_2c
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_33} :catch_34
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_33} :catch_36

    goto :goto_29

    :catch_34
    move-exception v0

    goto :goto_29

    :catch_36
    move-exception v0

    goto :goto_29

    :catch_38
    move-exception v0

    goto :goto_1a

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2c
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;Lorg/bouncycastle/asn1/dvcs/PathProcInput;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;Lorg/bouncycastle/asn1/dvcs/PathProcInput;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;Lorg/bouncycastle/asn1/dvcs/PathProcInput;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;Lorg/bouncycastle/asn1/dvcs/PathProcInput;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;Lorg/bouncycastle/asn1/dvcs/PathProcInput;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    if-nez p2, :cond_a

    :goto_7
    iput-object p3, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    return-void

    :cond_a
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_7
.end method

.method public static arrayFromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ne v0, v2, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    if-nez v0, :cond_8

    if-nez p0, :cond_b

    return-object v1

    :cond_8
    check-cast p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    return-object p0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
    .registers 3

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    move-result-object v0

    return-object v0
.end method

.method private setChain(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method private setPathProcInput(Lorg/bouncycastle/asn1/dvcs/PathProcInput;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    return-void
.end method


# virtual methods
.method public getChain()[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->arrayFromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    move-result-object v0

    return-object v0
.end method

.method public getPathProcInput()Lorg/bouncycastle/asn1/dvcs/PathProcInput;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    return-object v0
.end method

.method public getTarget()Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_19

    :goto_f
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    if-nez v1, :cond_1f

    :goto_13
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_19
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_f

    :cond_1f
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "TargetEtcChain {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_3e

    :goto_2f
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    if-nez v1, :cond_5f

    :goto_33
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "chain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2f

    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pathProcInput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_33
.end method
