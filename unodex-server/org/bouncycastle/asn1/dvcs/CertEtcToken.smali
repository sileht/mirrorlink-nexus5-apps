.class public Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final TAG_ASSERTION:I = 0x3

.field public static final TAG_CAPABILITIES:I = 0x8

.field public static final TAG_CERTIFICATE:I = 0x0

.field public static final TAG_CRL:I = 0x4

.field public static final TAG_ESSCERTID:I = 0x1

.field public static final TAG_OCSPCERTID:I = 0x6

.field public static final TAG_OCSPCERTSTATUS:I = 0x5

.field public static final TAG_OCSPRESPONSE:I = 0x7

.field public static final TAG_PKISTATUS:I = 0x2

.field private static final explicit:[Z


# instance fields
.field private extension:Lorg/bouncycastle/asn1/x509/Extension;

.field private tagNo:I

.field private value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Z

    aput-boolean v2, v0, v2

    aput-boolean v3, v0, v3

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    sput-object v0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->explicit:[Z

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    iput-object p2, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    iget v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    packed-switch v0, :pswitch_data_6a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2b
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    :goto_2f
    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    :pswitch_32
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ess/ESSCertID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/ESSCertID;

    move-result-object v0

    goto :goto_2f

    :pswitch_3b
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    goto :goto_2f

    :pswitch_40
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    goto :goto_2f

    :pswitch_49
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    goto :goto_2f

    :pswitch_4e
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v0

    goto :goto_2f

    :pswitch_57
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ocsp/CertID;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    goto :goto_2f

    :pswitch_5c
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object v0

    goto :goto_2f

    :pswitch_61
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/smime/SMIMECapabilities;

    move-result-object v0

    goto :goto_2f

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_32
        :pswitch_3b
        :pswitch_40
        :pswitch_49
        :pswitch_4e
        :pswitch_57
        :pswitch_5c
        :pswitch_61
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Extension;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->extension:Lorg/bouncycastle/asn1/x509/Extension;

    return-void
.end method

.method public static arrayFromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ne v0, v2, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    if-nez v0, :cond_c

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v0, :cond_f

    if-nez p0, :cond_17

    return-object v1

    :cond_c
    check-cast p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    return-object p0

    :cond_f
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_17
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;-><init>(Lorg/bouncycastle/asn1/x509/Extension;)V

    return-object v0
.end method


# virtual methods
.method public getExtension()Lorg/bouncycastle/asn1/x509/Extension;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->extension:Lorg/bouncycastle/asn1/x509/Extension;

    return-object v0
.end method

.method public getTagNo()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    return v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->extension:Lorg/bouncycastle/asn1/x509/Extension;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->extension:Lorg/bouncycastle/asn1/x509/Extension;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Extension;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    sget-object v1, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->explicit:[Z

    iget v2, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    aget-boolean v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    iget-object v3, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CertEtcToken {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
