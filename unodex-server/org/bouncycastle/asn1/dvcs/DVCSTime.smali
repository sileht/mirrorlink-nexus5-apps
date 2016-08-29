.class public Lorg/bouncycastle/asn1/dvcs/DVCSTime;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private time:Ljava/util/Date;

.field private timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;-><init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSTime;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    if-nez v0, :cond_c

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-nez v0, :cond_f

    if-nez p0, :cond_19

    return-object v1

    :cond_c
    check-cast p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    return-object p0

    :cond_f
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;-><init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V

    return-object v0

    :cond_19
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/DVCSTime;
    .registers 3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGenTime()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getTimeStampToken()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    if-nez v0, :cond_d

    return-object v1

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    if-nez v0, :cond_11

    return-object v1

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
