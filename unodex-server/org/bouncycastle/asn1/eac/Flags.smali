.class public Lorg/bouncycastle/asn1/eac/Flags;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;
    }
.end annotation


# instance fields
.field value:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    iput p1, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    return-void
.end method


# virtual methods
.method decode(Ljava/util/Hashtable;)Ljava/lang/String;
    .registers 6

    new-instance v1, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;

    const-string/jumbo v0, " "

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;-><init>(Lorg/bouncycastle/asn1/eac/Flags;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/eac/Flags;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->add(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    return v0
.end method

.method public isSet(I)Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    and-int/2addr v1, p1

    if-nez v1, :cond_7

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public set(I)V
    .registers 3

    iget v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    return-void
.end method
