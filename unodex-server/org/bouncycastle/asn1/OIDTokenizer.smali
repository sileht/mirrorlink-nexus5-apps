.class public Lorg/bouncycastle/asn1/OIDTokenizer;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private index:I

.field private oid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/OIDTokenizer;->index:I

    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .registers 3

    iget v0, p0, Lorg/bouncycastle/asn1/OIDTokenizer;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public nextToken()Ljava/lang/String;
    .registers 5

    const/4 v3, -0x1

    iget v0, p0, Lorg/bouncycastle/asn1/OIDTokenizer;->index:I

    if-eq v0, v3, :cond_1e

    iget-object v0, p0, Lorg/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    const/16 v1, 0x2e

    iget v2, p0, Lorg/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v3, :cond_20

    iget-object v1, p0, Lorg/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v2, p0, Lorg/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/OIDTokenizer;->index:I

    return-object v1

    :cond_1e
    const/4 v0, 0x0

    return-object v0

    :cond_20
    iget-object v0, p0, Lorg/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v1, p0, Lorg/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput v3, p0, Lorg/bouncycastle/asn1/OIDTokenizer;->index:I

    return-object v0
.end method
