.class public Lorg/bouncycastle/asn1/cmp/PKIBody;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final TYPE_CA_KEY_UPDATE_ANN:I = 0xf

.field public static final TYPE_CERT_ANN:I = 0x10

.field public static final TYPE_CERT_CONFIRM:I = 0x18

.field public static final TYPE_CERT_REP:I = 0x3

.field public static final TYPE_CERT_REQ:I = 0x2

.field public static final TYPE_CONFIRM:I = 0x13

.field public static final TYPE_CRL_ANN:I = 0x12

.field public static final TYPE_CROSS_CERT_REP:I = 0xe

.field public static final TYPE_CROSS_CERT_REQ:I = 0xd

.field public static final TYPE_ERROR:I = 0x17

.field public static final TYPE_GEN_MSG:I = 0x15

.field public static final TYPE_GEN_REP:I = 0x16

.field public static final TYPE_INIT_REP:I = 0x1

.field public static final TYPE_INIT_REQ:I = 0x0

.field public static final TYPE_KEY_RECOVERY_REP:I = 0xa

.field public static final TYPE_KEY_RECOVERY_REQ:I = 0x9

.field public static final TYPE_KEY_UPDATE_REP:I = 0x8

.field public static final TYPE_KEY_UPDATE_REQ:I = 0x7

.field public static final TYPE_NESTED:I = 0x14

.field public static final TYPE_P10_CERT_REQ:I = 0x4

.field public static final TYPE_POLL_REP:I = 0x1a

.field public static final TYPE_POLL_REQ:I = 0x19

.field public static final TYPE_POPO_CHALL:I = 0x5

.field public static final TYPE_POPO_REP:I = 0x6

.field public static final TYPE_REVOCATION_ANN:I = 0x11

.field public static final TYPE_REVOCATION_REP:I = 0xc

.field public static final TYPE_REVOCATION_REQ:I = 0xb


# instance fields
.field private body:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private tagNo:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getBodyForType(ILorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->body:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    iget v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getBodyForType(ILorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->body:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private static getBodyForType(ILorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 5

    packed-switch p0, :pswitch_data_a4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    return-object v0

    :pswitch_22
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v0

    return-object v0

    :pswitch_27
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    return-object v0

    :pswitch_2c
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v0

    return-object v0

    :pswitch_31
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v0

    return-object v0

    :pswitch_36
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;

    move-result-object v0

    return-object v0

    :pswitch_3b
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;

    move-result-object v0

    return-object v0

    :pswitch_40
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    return-object v0

    :pswitch_45
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v0

    return-object v0

    :pswitch_4a
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    return-object v0

    :pswitch_4f
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/KeyRecRepContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/KeyRecRepContent;

    move-result-object v0

    return-object v0

    :pswitch_54
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/RevReqContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RevReqContent;

    move-result-object v0

    return-object v0

    :pswitch_59
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/RevRepContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RevRepContent;

    move-result-object v0

    return-object v0

    :pswitch_5e
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    return-object v0

    :pswitch_63
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v0

    return-object v0

    :pswitch_68
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;

    move-result-object v0

    return-object v0

    :pswitch_6d
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    return-object v0

    :pswitch_72
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RevAnnContent;

    move-result-object v0

    return-object v0

    :pswitch_77
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CRLAnnContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CRLAnnContent;

    move-result-object v0

    return-object v0

    :pswitch_7c
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;

    move-result-object v0

    return-object v0

    :pswitch_81
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PKIMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIMessages;

    move-result-object v0

    return-object v0

    :pswitch_86
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/GenMsgContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/GenMsgContent;

    move-result-object v0

    return-object v0

    :pswitch_8b
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/GenRepContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/GenRepContent;

    move-result-object v0

    return-object v0

    :pswitch_90
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;

    move-result-object v0

    return-object v0

    :pswitch_95
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    move-result-object v0

    return-object v0

    :pswitch_9a
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PollReqContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PollReqContent;

    move-result-object v0

    return-object v0

    :pswitch_9f
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PollRepContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PollRepContent;

    move-result-object v0

    return-object v0

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_22
        :pswitch_27
        :pswitch_2c
        :pswitch_31
        :pswitch_36
        :pswitch_3b
        :pswitch_40
        :pswitch_45
        :pswitch_4a
        :pswitch_4f
        :pswitch_54
        :pswitch_59
        :pswitch_5e
        :pswitch_63
        :pswitch_68
        :pswitch_6d
        :pswitch_72
        :pswitch_77
        :pswitch_7c
        :pswitch_81
        :pswitch_86
        :pswitch_8b
        :pswitch_90
        :pswitch_95
        :pswitch_9a
        :pswitch_9f
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIBody;
    .registers 4

    if-nez p0, :cond_5

    :cond_2
    check-cast p0, Lorg/bouncycastle/asn1/cmp/PKIBody;

    return-object p0

    :cond_5
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIBody;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->body:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->body:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
