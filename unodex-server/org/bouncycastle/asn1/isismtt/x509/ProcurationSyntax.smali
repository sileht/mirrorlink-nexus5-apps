.class public Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# instance fields
.field private certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

.field private country:Ljava/lang/String;

.field private thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    iput-object p3, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x509/IssuerSerial;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    iput-object p3, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    const/4 v3, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v0, v3, :cond_28

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_a

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_3a

    return-void

    :cond_3a
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_90

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad tag number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_67
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/DERPrintableString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERPrintableString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    goto :goto_33

    :pswitch_72
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    goto :goto_33

    :pswitch_79
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_88

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    goto :goto_33

    :cond_88
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    goto :goto_33

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_67
        :pswitch_72
        :pswitch_79
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;
    .registers 4

    if-nez p0, :cond_5

    :cond_2
    check-cast p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;

    return-object p0

    :cond_5
    instance-of v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal object in getInstance: "

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
    new-instance v0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public getCertRef()Lorg/bouncycastle/asn1/x509/IssuerSerial;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPerson()Lorg/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getTypeOfSubstitution()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 7

    const/4 v5, 0x3

    const/4 v4, 0x1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    if-nez v1, :cond_23

    :goto_b
    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-nez v1, :cond_33

    :goto_f
    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-nez v1, :cond_3f

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v5, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_1d
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_23
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lorg/bouncycastle/asn1/DERPrintableString;

    iget-object v3, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_b

    :cond_33
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_f

    :cond_3f
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v5, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1d
.end method
