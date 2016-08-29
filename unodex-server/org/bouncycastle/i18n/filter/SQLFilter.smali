.class public Lorg/bouncycastle/i18n/filter/SQLFilter;
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

    sparse-switch v2, :sswitch_data_6e

    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :sswitch_1b
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "\\\'"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :sswitch_26
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "\\\""

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    :sswitch_2f
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "\\="

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    :sswitch_38
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "\\-"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    :sswitch_41
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "\\/"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    :sswitch_4a
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "\\\\"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    :sswitch_53
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "\\;"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    :sswitch_5c
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "\\r"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    :sswitch_65
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "\\n"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    :sswitch_data_6e
    .sparse-switch
        0xa -> :sswitch_65
        0xd -> :sswitch_5c
        0x22 -> :sswitch_26
        0x27 -> :sswitch_1b
        0x2d -> :sswitch_38
        0x2f -> :sswitch_41
        0x3b -> :sswitch_53
        0x3d -> :sswitch_2f
        0x5c -> :sswitch_4a
    .end sparse-switch
.end method

.method public doFilterUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/i18n/filter/SQLFilter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
