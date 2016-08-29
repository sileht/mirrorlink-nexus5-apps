.class Lorg/bouncycastle/asn1/BEROctetString$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field counter:I

.field final synthetic this$0:Lorg/bouncycastle/asn1/BEROctetString;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/BEROctetString;)V
    .registers 3

    iput-object p1, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->this$0:Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->counter:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    iget v0, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->counter:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->this$0:Lorg/bouncycastle/asn1/BEROctetString;

    # getter for: Lorg/bouncycastle/asn1/BEROctetString;->octs:[Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-static {v1}, Lorg/bouncycastle/asn1/BEROctetString;->access$000(Lorg/bouncycastle/asn1/BEROctetString;)[Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_d

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->this$0:Lorg/bouncycastle/asn1/BEROctetString;

    # getter for: Lorg/bouncycastle/asn1/BEROctetString;->octs:[Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-static {v0}, Lorg/bouncycastle/asn1/BEROctetString;->access$000(Lorg/bouncycastle/asn1/BEROctetString;)[Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->counter:I

    aget-object v0, v0, v1

    return-object v0
.end method
