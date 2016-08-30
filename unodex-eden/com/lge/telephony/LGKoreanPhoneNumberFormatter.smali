.class Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "LGKoreanPhoneNumberFormatter.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "LGKoreanPhoneNumberFormatter"

.field private static sDDD3Number:[S

.field private static sDDD5Number:[S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/16 v0, 0x25

    new-array v0, v0, [S

    fill-array-data v0, :array_14

    sput-object v0, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD3Number:[S

    .line 39
    const/16 v0, 0x11

    new-array v0, v0, [S

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD5Number:[S

    .line 42
    return-void

    .line 32
    nop

    :array_14
    .array-data 2
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x1fs
        0x20s
        0x21s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x46s
        0x50s
    .end array-data

    .line 39
    nop

    :array_3e
    .array-data 2
        0x12cs
        0x141s
        0x155s
        0x158s
        0x159s
        0x16ds
        0x2bcs
        0x2d7s
        0x2f3s
        0x30cs
        0x2fes
        0x313s
        0x184s
        0x302s
        0x309s
        0x2f1s
        0x2c3s
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Landroid/text/Editable;)V
    .registers 13
    .param p0, "oritext"    # Landroid/text/Editable;

    .prologue
    const/4 v11, 0x1

    .line 47
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    .line 48
    .local v3, "text":Landroid/text/Editable;
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v3, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 49
    invoke-interface {p0}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "format input = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    .line 55
    const/4 v9, 0x0

    .line 56
    .local v9, "tmp1stHyphen":I
    const/4 v10, 0x0

    .line 57
    .local v10, "tmp2ndHyphen":I
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v8

    .line 60
    .local v8, "length":I
    invoke-static {v3}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->removeHyphen(Landroid/text/Editable;)V

    .line 62
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v8

    .line 64
    invoke-static {p0, v3}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->isValid(Landroid/text/Editable;Landroid/text/Editable;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 105
    :goto_40
    return-void

    .line 68
    :cond_41
    invoke-static {v3, v8}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getFirstHyphenPosition(Landroid/text/Editable;I)I

    move-result v9

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tmp1stHyphen="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    .line 72
    invoke-static {v3, v8, v9}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getSecondHyphenPosition(Landroid/text/Editable;II)I

    move-result v10

    .line 75
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_5c
    if-lt v7, v8, :cond_cd

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result tmp1stHyphen = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result tmp2ndHyphen = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "format output = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    .line 96
    :try_start_94
    const-string v0, "last"

    invoke-static {v0, p0, v3}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;)V

    .line 97
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 98
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b2} :catch_b3

    goto :goto_40

    .line 99
    :catch_b3
    move-exception v6

    .line 100
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "selection exception e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Z)V

    .line 101
    const-string v0, "selection exception"

    invoke-static {v0, p0, v3, v11}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;Z)V

    goto/16 :goto_40

    .line 76
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_cd
    if-ne v7, v9, :cond_d6

    if-eqz v7, :cond_d6

    .line 77
    const-string v0, "-"

    invoke-interface {v3, v7, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 79
    :cond_d6
    const/4 v0, 0x4

    if-le v10, v0, :cond_ea

    .line 80
    add-int/lit8 v0, v7, 0x1

    if-ne v0, v10, :cond_e6

    if-eqz v7, :cond_e6

    .line 81
    add-int/lit8 v0, v7, 0x1

    const-string v1, "-"

    invoke-interface {v3, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 75
    :cond_e6
    :goto_e6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5c

    .line 84
    :cond_ea
    if-ne v7, v10, :cond_e6

    if-eqz v7, :cond_e6

    .line 85
    const-string v0, "-"

    invoke-interface {v3, v7, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_e6
.end method

.method private static getFirstHyphenPosition(Landroid/text/Editable;I)I
    .registers 8
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I

    .prologue
    const/16 v5, 0x32

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x30

    .line 169
    const/4 v0, 0x0

    .line 172
    .local v0, "tmp1stHyphen":I
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_14

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_14

    .line 173
    const/4 v0, 0x2

    .line 177
    :cond_14
    const/4 v1, 0x3

    if-lt p1, v1, :cond_2b

    .line 178
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2b

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2b

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2b

    .line 179
    const/4 v0, 0x3

    .line 183
    :cond_2b
    const/4 v1, 0x4

    if-lt p1, v1, :cond_32

    .line 184
    invoke-static {p0, p1, v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getFirstHyphenPositionMidLength(Landroid/text/Editable;II)I

    move-result v0

    .line 187
    :cond_32
    return v0
.end method

.method private static getFirstHyphenPositionKT(Landroid/text/Editable;II)I
    .registers 10
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I
    .param p2, "tmp1st"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    move v1, p2

    .line 228
    .local v1, "tmp1stHyphen":I
    if-ne p1, v6, :cond_30

    .line 229
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit16 v3, v3, 0x3e8

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    .line 230
    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0xa

    .line 229
    add-int/2addr v3, v4

    .line 230
    const/4 v4, 0x3

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 229
    add-int v2, v3, v4

    .line 231
    .local v2, "tmpDDDNumber":I
    const/16 v3, 0x7d4

    if-ne v2, v3, :cond_2f

    .line 232
    const/4 v1, 0x0

    .line 243
    .end local v2    # "tmpDDDNumber":I
    :cond_2f
    return v1

    .line 234
    :cond_30
    if-le p1, v6, :cond_2f

    .line 235
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0x64

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int v2, v3, v4

    .line 236
    .restart local v2    # "tmpDDDNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4c
    sget-object v3, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD3Number:[S

    array-length v3, v3

    if-ge v0, v3, :cond_2f

    .line 237
    sget-object v3, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD3Number:[S

    aget-short v3, v3, v0

    if-ne v2, v3, :cond_58

    .line 238
    const/4 v1, 0x3

    .line 236
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c
.end method

.method private static getFirstHyphenPositionLongLength(Landroid/text/Editable;II)I
    .registers 10
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I
    .param p2, "tmp1st"    # I

    .prologue
    const/4 v4, 0x6

    const/4 v6, 0x1

    .line 265
    move v1, p2

    .line 268
    .local v1, "tmp1stHyphen":I
    if-ge p1, v4, :cond_7

    move v2, v1

    .line 282
    .end local v1    # "tmp1stHyphen":I
    .local v2, "tmp1stHyphen":I
    :goto_6
    return v2

    .line 272
    .end local v2    # "tmp1stHyphen":I
    .restart local v1    # "tmp1stHyphen":I
    :cond_7
    if-lt p1, v4, :cond_46

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_46

    .line 273
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit16 v4, v4, 0x2710

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v4, v5

    .line 274
    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0x64

    .line 273
    add-int/2addr v4, v5

    .line 274
    const/4 v5, 0x3

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0xa

    .line 273
    add-int/2addr v4, v5

    .line 274
    const/4 v5, 0x4

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    .line 273
    add-int v3, v4, v5

    .line 275
    .local v3, "tmpDDDNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_41
    sget-object v4, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD5Number:[S

    array-length v4, v4

    if-lt v0, v4, :cond_48

    .end local v0    # "i":I
    .end local v3    # "tmpDDDNumber":I
    :cond_46
    move v2, v1

    .line 282
    .end local v1    # "tmp1stHyphen":I
    .restart local v2    # "tmp1stHyphen":I
    goto :goto_6

    .line 276
    .end local v2    # "tmp1stHyphen":I
    .restart local v0    # "i":I
    .restart local v1    # "tmp1stHyphen":I
    .restart local v3    # "tmpDDDNumber":I
    :cond_48
    sget-object v4, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD5Number:[S

    aget-short v4, v4, v0

    if-ne v3, v4, :cond_4f

    .line 277
    const/4 v1, 0x5

    .line 275
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_41
.end method

.method private static getFirstHyphenPositionMidLength(Landroid/text/Editable;II)I
    .registers 12
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I
    .param p2, "tmp1st"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    move v0, p2

    .line 195
    .local v0, "tmp1stHyphen":I
    const-string v2, "KR"

    const-string v3, "KT"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 197
    invoke-static {p0, p1, v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getFirstHyphenPositionKT(Landroid/text/Editable;II)I

    move-result v0

    .line 204
    :goto_14
    if-ne p1, v8, :cond_45

    .line 205
    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit16 v2, v2, 0x3e8

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    .line 206
    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0xa

    .line 205
    add-int/2addr v2, v3

    .line 206
    invoke-interface {p0, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 205
    add-int v1, v2, v3

    .line 207
    .local v1, "tmpDDDNumber":I
    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_40

    const/16 v2, 0x1fd

    if-le v1, v2, :cond_44

    :cond_40
    const/16 v2, 0x82

    if-ne v1, v2, :cond_45

    .line 208
    :cond_44
    const/4 v0, 0x0

    .line 212
    .end local v1    # "tmpDDDNumber":I
    :cond_45
    if-le p1, v8, :cond_76

    .line 213
    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit16 v2, v2, 0x3e8

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    invoke-interface {p0, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int v1, v2, v3

    .line 214
    .restart local v1    # "tmpDDDNumber":I
    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_71

    const/16 v2, 0x1fd

    if-le v1, v2, :cond_75

    :cond_71
    const/16 v2, 0x82

    if-ne v1, v2, :cond_76

    .line 215
    :cond_75
    const/4 v0, 0x4

    .line 219
    .end local v1    # "tmpDDDNumber":I
    :cond_76
    invoke-static {p0, p1, v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getFirstHyphenPositionLongLength(Landroid/text/Editable;II)I

    move-result v0

    .line 221
    return v0

    .line 200
    :cond_7b
    invoke-static {p0, p1, v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getFirstHyphenPositionSKT(Landroid/text/Editable;II)I

    move-result v0

    goto :goto_14
.end method

.method private static getFirstHyphenPositionSKT(Landroid/text/Editable;II)I
    .registers 9
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I
    .param p2, "tmp1st"    # I

    .prologue
    .line 247
    move v1, p2

    .line 250
    .local v1, "tmp1stHyphen":I
    const/4 v4, 0x4

    if-ge p1, v4, :cond_6

    move v2, v1

    .line 261
    .end local v1    # "tmp1stHyphen":I
    .local v2, "tmp1stHyphen":I
    :goto_5
    return v2

    .line 254
    .end local v2    # "tmp1stHyphen":I
    .restart local v1    # "tmp1stHyphen":I
    :cond_6
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0x64

    const/4 v5, 0x1

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    add-int v3, v4, v5

    .line 255
    .local v3, "tmpDDDNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    sget-object v4, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD3Number:[S

    array-length v4, v4

    if-lt v0, v4, :cond_2a

    move v2, v1

    .line 261
    .end local v1    # "tmp1stHyphen":I
    .restart local v2    # "tmp1stHyphen":I
    goto :goto_5

    .line 256
    .end local v2    # "tmp1stHyphen":I
    .restart local v1    # "tmp1stHyphen":I
    :cond_2a
    sget-object v4, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD3Number:[S

    aget-short v4, v4, v0

    if-ne v3, v4, :cond_31

    .line 257
    const/4 v1, 0x3

    .line 255
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_23
.end method

.method private static getSecondHyphenPosition(Landroid/text/Editable;II)I
    .registers 11
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I
    .param p2, "tmp1st"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 286
    move v2, p2

    .line 287
    .local v2, "tmp1stHyphen":I
    const/4 v3, 0x0

    .line 292
    .local v3, "tmp2ndHyphen":I
    if-lez v2, :cond_28

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8
    if-lt v0, p1, :cond_e

    .line 300
    :goto_a
    if-eqz v1, :cond_23

    .line 301
    move v3, v1

    .line 324
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_d
    :goto_d
    return v3

    .line 294
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    :cond_e
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x50

    if-eq v4, v5, :cond_1e

    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x57

    if-ne v4, v5, :cond_20

    .line 295
    :cond_1e
    move v1, v0

    .line 296
    goto :goto_a

    .line 293
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 303
    :cond_23
    invoke-static {p0, p1, v2, v3}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getSecondHyphenPosition2(Landroid/text/Editable;III)I

    move-result v3

    .line 305
    goto :goto_d

    .line 307
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_28
    const/4 v2, 0x0

    .line 308
    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_39

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_3b

    .line 309
    :cond_39
    const/4 v3, 0x0

    .line 310
    goto :goto_d

    .line 311
    :cond_3b
    const/16 v4, 0x8

    if-lt p1, v4, :cond_65

    .line 312
    const/4 v3, 0x4

    .line 316
    :goto_40
    if-ne p1, v7, :cond_d

    .line 317
    const/4 v4, 0x3

    invoke-interface {p0, v6, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "050"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 318
    invoke-interface {p0, v6, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0130"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 319
    :cond_63
    const/4 v3, 0x0

    goto :goto_d

    .line 314
    :cond_65
    const/4 v3, 0x3

    goto :goto_40
.end method

.method private static getSecondHyphenPosition2(Landroid/text/Editable;III)I
    .registers 9
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I
    .param p2, "tmp1st"    # I
    .param p3, "tmp2nd"    # I

    .prologue
    const/16 v4, 0x30

    .line 328
    move v0, p2

    .line 329
    .local v0, "tmp1stHyphen":I
    move v1, p3

    .line 332
    .local v1, "tmp2ndHyphen":I
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_49

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_49

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_49

    .line 333
    add-int/lit8 v2, v0, 0x8

    if-lt p1, v2, :cond_34

    .line 334
    add-int/lit8 v1, v0, 0x5

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "case 1 tmp2ndHyphen = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    .line 359
    :goto_33
    return v1

    .line 337
    :cond_34
    add-int/lit8 v1, v0, 0x4

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "case 2 tmp2ndHyphen = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    goto :goto_33

    .line 341
    :cond_49
    add-int/lit8 v2, p1, -0x1

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_81

    .line 342
    add-int/lit8 v2, v0, 0x9

    if-lt p1, v2, :cond_6c

    .line 343
    add-int/lit8 v1, v0, 0x5

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "case 3 tmp2ndHyphen = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    goto :goto_33

    .line 346
    :cond_6c
    add-int/lit8 v1, v0, 0x4

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "case 4 tmp2ndHyphen = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    goto :goto_33

    .line 350
    :cond_81
    add-int/lit8 v2, v0, 0x8

    if-lt p1, v2, :cond_9a

    .line 351
    add-int/lit8 v1, v0, 0x5

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "case 5 tmp2ndHyphen = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    goto :goto_33

    .line 354
    :cond_9a
    add-int/lit8 v1, v0, 0x4

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "case 6 tmp2ndHyphen = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    goto :goto_33
.end method

.method private static isValid(Landroid/text/Editable;Landroid/text/Editable;)Z
    .registers 13
    .param p0, "oritext"    # Landroid/text/Editable;
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 121
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    .line 123
    .local v8, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    if-lt v7, v8, :cond_e

    .line 157
    const/4 v0, 0x2

    if-ge v8, v0, :cond_8f

    move v0, v9

    .line 165
    :goto_d
    return v0

    .line 124
    :cond_e
    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1e

    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-le v0, v1, :cond_8b

    .line 125
    :cond_1e
    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_8b

    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_8b

    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x57

    if-eq v0, v1, :cond_8b

    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_8b

    .line 130
    :try_start_3e
    const-string v0, ""

    invoke-static {v0, p0, p1}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;)V

    .line 131
    if-eqz p1, :cond_56

    if-eqz p0, :cond_56

    .line 132
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 135
    :cond_56
    const-string v0, "step2"

    invoke-static {v0, p0, p1}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;)V

    .line 136
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_66} :catch_68

    :goto_66
    move v0, v9

    .line 142
    goto :goto_d

    .line 137
    :catch_68
    move-exception v6

    .line 138
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Selection Exception i="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Z)V

    .line 139
    const-string v0, "selection exception"

    invoke-static {v0, p0, p1, v10}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;Z)V

    goto :goto_66

    .line 123
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_8b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 161
    :cond_8f
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    :cond_9f
    move v0, v9

    .line 162
    goto/16 :goto_d

    :cond_a2
    move v0, v10

    .line 165
    goto/16 :goto_d
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Z)V

    .line 364
    return-void
.end method

.method private static log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "oritext"    # Landroid/text/Editable;
    .param p2, "text"    # Landroid/text/Editable;

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;Z)V

    .line 374
    return-void
.end method

.method private static log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;Z)V
    .registers 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "oritext"    # Landroid/text/Editable;
    .param p2, "text"    # Landroid/text/Editable;
    .param p3, "enforce"    # Z

    .prologue
    .line 377
    if-eqz p3, :cond_78

    .line 378
    const-string v0, "LGKoreanPhoneNumberFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " oritext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz p1, :cond_50

    .line 381
    const-string v0, "LGKoreanPhoneNumberFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "oritext.toString="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oritext.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_50
    if-eqz p2, :cond_78

    .line 384
    const-string v0, "LGKoreanPhoneNumberFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "text.toString="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", text.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_78
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "enforce"    # Z

    .prologue
    .line 367
    if-eqz p1, :cond_7

    .line 368
    const-string v0, "LGKoreanPhoneNumberFormatter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_7
    return-void
.end method

.method private static removeHyphen(Landroid/text/Editable;)V
    .registers 4
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "p":I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v0, v1, :cond_8

    .line 118
    return-void

    .line 112
    :cond_8
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_16

    .line 113
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 115
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
