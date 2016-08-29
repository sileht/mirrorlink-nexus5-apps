.class public Lorg/bouncycastle/i18n/filter/HTMLFilter;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/i18n/filter/Filter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFilter(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v0, v2, :cond_11

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_8a

    :pswitch_18
    add-int/lit8 v0, v0, -0x3

    :goto_1a
    add-int/lit8 v0, v0, 0x4

    goto :goto_6

    :pswitch_1d
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "&#60"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    :pswitch_26
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "&#62"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    :pswitch_2f
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "&#40"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    :pswitch_38
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "&#41"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    :pswitch_41
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "&#35"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    :pswitch_4a
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "&#38"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    :pswitch_53
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "&#34"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    :pswitch_5c
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "&#39"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    :pswitch_65
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "&#37"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    :pswitch_6e
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "&#59"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    :pswitch_77
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "&#43"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    :pswitch_80
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "&#45"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    nop

    :pswitch_data_8a
    .packed-switch 0x22
        :pswitch_53
        :pswitch_41
        :pswitch_18
        :pswitch_65
        :pswitch_4a
        :pswitch_5c
        :pswitch_2f
        :pswitch_38
        :pswitch_18
        :pswitch_77
        :pswitch_18
        :pswitch_80
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_6e
        :pswitch_1d
        :pswitch_18
        :pswitch_26
    .end packed-switch
.end method

.method public doFilterUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/i18n/filter/HTMLFilter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
