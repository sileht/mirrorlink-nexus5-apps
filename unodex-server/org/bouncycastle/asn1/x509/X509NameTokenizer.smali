.class public Lorg/bouncycastle/asn1/x509/X509NameTokenizer;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private index:I

.field private separator:C

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    int-to-char v0, p2

    iput-char v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .registers 3

    iget v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public nextToken()Ljava/lang/String;
    .registers 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_29

    iget v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v2, v1

    move v3, v0

    move v0, v1

    :goto_18
    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_2b

    :cond_20
    iput v3, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    const/4 v0, 0x0

    return-object v0

    :cond_2b
    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_40

    if-eqz v0, :cond_4f

    :cond_37
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3c
    move v0, v1

    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_40
    if-eqz v0, :cond_48

    :goto_42
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3c

    :cond_48
    if-eqz v2, :cond_4d

    move v0, v1

    :goto_4b
    move v2, v0

    goto :goto_42

    :cond_4d
    move v0, v4

    goto :goto_4b

    :cond_4f
    if-nez v2, :cond_37

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_5f

    iget-char v6, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    if-eq v5, v6, :cond_20

    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3d

    :cond_5f
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v4

    goto :goto_3d
.end method
