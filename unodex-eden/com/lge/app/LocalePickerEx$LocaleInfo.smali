.class public Lcom/lge/app/LocalePickerEx$LocaleInfo;
.super Ljava/lang/Object;
.source "LocalePickerEx.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/LocalePickerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/lge/app/LocalePickerEx$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final sCollator:Ljava/text/Collator;


# instance fields
.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->label:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->locale:Ljava/util/Locale;

    .line 104
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/lge/app/LocalePickerEx$LocaleInfo;)I
    .registers 15
    .param p1, "another"    # Lcom/lge/app/LocalePickerEx$LocaleInfo;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "curLocaleStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/app/LocalePickerEx$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "thisLocaleStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lge/app/LocalePickerEx$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "anotherLocaleStr":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 170
    :cond_23
    :goto_23
    return v6

    .line 129
    :cond_24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    move v6, v7

    .line 130
    goto :goto_23

    .line 133
    :cond_2c
    # getter for: Lcom/lge/app/LocalePickerEx;->COUNTRY_CODE:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/LocalePickerEx;->access$0()Ljava/lang/String;

    move-result-object v9

    const-string v10, "KR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 134
    new-array v0, v12, [Ljava/lang/String;

    const-string v9, "ko"

    aput-object v9, v0, v8

    const-string v9, "en"

    aput-object v9, v0, v7

    const-string v9, "zh"

    aput-object v9, v0, v11

    .line 135
    .local v0, "LANG_PREFIXS":[Ljava/lang/String;
    array-length v9, v0

    :goto_47
    if-lt v8, v9, :cond_54

    .line 170
    .end local v0    # "LANG_PREFIXS":[Ljava/lang/String;
    :cond_49
    sget-object v6, Lcom/lge/app/LocalePickerEx$LocaleInfo;->sCollator:Ljava/text/Collator;

    iget-object v7, p0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->label:Ljava/lang/String;

    iget-object v8, p1, Lcom/lge/app/LocalePickerEx$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_23

    .line 135
    .restart local v0    # "LANG_PREFIXS":[Ljava/lang/String;
    :cond_54
    aget-object v4, v0, v8

    .line 136
    .local v4, "language":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_23

    .line 138
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_64

    move v6, v7

    .line 139
    goto :goto_23

    .line 135
    :cond_64
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    .line 142
    .end local v0    # "LANG_PREFIXS":[Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    :cond_67
    # getter for: Lcom/lge/app/LocalePickerEx;->COUNTRY_CODE:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/LocalePickerEx;->access$0()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 143
    new-array v3, v12, [Ljava/lang/String;

    const-string v9, "zh"

    aput-object v9, v3, v8

    const-string v9, "en"

    aput-object v9, v3, v7

    const-string v9, "ko"

    aput-object v9, v3, v11

    .line 144
    .local v3, "langPrefixs":[Ljava/lang/String;
    array-length v9, v3

    :goto_82
    if-ge v8, v9, :cond_49

    aget-object v4, v3, v8

    .line 145
    .restart local v4    # "language":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_23

    .line 147
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_94

    move v6, v7

    .line 148
    goto :goto_23

    .line 144
    :cond_94
    add-int/lit8 v8, v8, 0x1

    goto :goto_82

    .line 151
    .end local v3    # "langPrefixs":[Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    :cond_97
    # getter for: Lcom/lge/app/LocalePickerEx;->sOPERATOR_CODE:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/LocalePickerEx;->access$1()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TLF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 152
    new-array v3, v12, [Ljava/lang/String;

    const-string v9, "en_GB"

    aput-object v9, v3, v8

    const-string v9, "es_ES"

    aput-object v9, v3, v7

    const-string v9, "de_DE"

    aput-object v9, v3, v11

    .line 153
    .restart local v3    # "langPrefixs":[Ljava/lang/String;
    array-length v9, v3

    :goto_b2
    if-ge v8, v9, :cond_49

    aget-object v4, v3, v8

    .line 154
    .restart local v4    # "language":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_23

    .line 156
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c5

    move v6, v7

    .line 157
    goto/16 :goto_23

    .line 153
    :cond_c5
    add-int/lit8 v8, v8, 0x1

    goto :goto_b2

    .line 162
    .end local v3    # "langPrefixs":[Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    :cond_c8
    const-string v8, "en"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_23

    .line 164
    const-string v6, "en"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    move v6, v7

    .line 165
    goto/16 :goto_23
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/lge/app/LocalePickerEx$LocaleInfo;

    invoke-virtual {p0, p1}, Lcom/lge/app/LocalePickerEx$LocaleInfo;->compareTo(Lcom/lge/app/LocalePickerEx$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/app/LocalePickerEx$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method
