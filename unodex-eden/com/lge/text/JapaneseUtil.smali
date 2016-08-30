.class public Lcom/lge/text/JapaneseUtil;
.super Ljava/lang/Object;
.source "JapaneseUtil.java"


# static fields
.field private static final FIRST_CHAR_KATAKANA_FULL_WIDTH:C = '\u30a1'

.field private static final FIRST_CHAR_KATAKANA_HALF_WIDTH:C = '\uff66'

.field private static final HALFWIDTH_KATAKANA_HIRAGANA_PROLONGED_SOUND_MARK:C = '\uff70'

.field private static final HALFWIDTH_KATAKANA_MIDDLE_DOT:C = '\uff65'

.field private static final HALFWIDTH_KATAKANA_SEMI_VOICED_SOUND_MARK:C = '\uff9f'

.field private static final HALFWIDTH_KATAKANA_VOICED_SOUND_MARK:C = '\uff9e'

.field private static final KATAKANA_HIRAGANA_PROLONGED_SOUND_MARK:C = '\u30fc'

.field private static final KATAKANA_HIRAGANA_SEMI_VOICED_SOUND_MARK:C = '\u309c'

.field private static final KATAKANA_HIRAGANA_VOICED_SOUND_MARK:C = '\u309b'

.field private static final KATAKANA_LETTER_VA:C = '\u30f7'

.field private static final KATAKANA_MIDDLE_DOT:C = '\u30fb'


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFullWidthKatakanaLetter(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 76
    const/16 v0, 0x30a1

    if-gt v0, p0, :cond_a

    const/16 v0, 0x30fa

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isHalfWidthKatakanaLetter(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 90
    const v0, 0xff66

    if-gt v0, p0, :cond_11

    const v0, 0xff9d

    if-gt p0, v0, :cond_11

    const v0, 0xff70

    if-eq p0, v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isHiraganaLetter(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 48
    const/16 v0, 0x3041

    if-gt v0, p0, :cond_a

    const/16 v0, 0x3096

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isJapaneseCharacter(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 19
    const/16 v0, 0x3041

    if-lt p0, v0, :cond_8

    const/16 v0, 0x309f

    if-le p0, v0, :cond_24

    :cond_8
    const/16 v0, 0x30a0

    if-lt p0, v0, :cond_10

    const/16 v0, 0x30ff

    if-le p0, v0, :cond_24

    .line 20
    :cond_10
    const/16 v0, 0x31f0

    if-lt p0, v0, :cond_18

    const/16 v0, 0x31ff

    if-le p0, v0, :cond_24

    :cond_18
    const v0, 0xff65

    if-lt p0, v0, :cond_22

    const v0, 0xfff9

    .line 19
    if-le p0, v0, :cond_24

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method public static isJapaneseLetter(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 34
    invoke-static {p0}, Lcom/lge/text/JapaneseUtil;->isHiraganaLetter(C)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/lge/text/JapaneseUtil;->isFullWidthKatakanaLetter(C)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/lge/text/JapaneseUtil;->isHalfWidthKatakanaLetter(C)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static isKatakanaLetter(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 62
    invoke-static {p0}, Lcom/lge/text/JapaneseUtil;->isHalfWidthKatakanaLetter(C)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/lge/text/JapaneseUtil;->isFullWidthKatakanaLetter(C)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static toFullWidthKatakana(C)C
    .registers 4
    .param p0, "c"    # C

    .prologue
    .line 134
    invoke-static {p0}, Lcom/lge/text/JapaneseUtil;->isHiraganaLetter(C)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 135
    add-int/lit8 v1, p0, 0x60

    int-to-char v0, v1

    .line 148
    :cond_9
    :goto_9
    return v0

    .line 136
    :cond_a
    invoke-static {p0}, Lcom/lge/text/JapaneseUtil;->isHalfWidthKatakanaLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 137
    sget-object v1, Lcom/lge/text/KatakanaMap;->MAP_TO_FULL:[C

    const v2, 0xff66

    sub-int v2, p0, v2

    aget-char v0, v1, v2

    .line 138
    .local v0, "mapped":C
    if-nez v0, :cond_9

    move v0, p0

    goto :goto_9

    .line 139
    .end local v0    # "mapped":C
    :cond_1d
    const v1, 0xff9e

    if-ne p0, v1, :cond_26

    .line 140
    const/16 p0, 0x309b

    :cond_24
    :goto_24
    move v0, p0

    .line 148
    goto :goto_9

    .line 141
    :cond_26
    const v1, 0xff9f

    if-ne p0, v1, :cond_2e

    .line 142
    const/16 p0, 0x309c

    .line 143
    goto :goto_24

    :cond_2e
    const v1, 0xff70

    if-ne p0, v1, :cond_36

    .line 144
    const/16 p0, 0x30fc

    .line 145
    goto :goto_24

    :cond_36
    const v1, 0xff65

    if-ne p0, v1, :cond_24

    .line 146
    const/16 p0, 0x30fb

    goto :goto_24
.end method

.method public static toFullWidthKatakana(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 219
    if-nez p0, :cond_4

    .line 220
    const/4 v6, 0x0

    .line 245
    :goto_3
    return-object v6

    .line 223
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 227
    .local v4, "textLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-lt v1, v4, :cond_15

    .line 245
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 228
    :cond_15
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 229
    .local v0, "c":C
    const/4 v5, 0x0

    .line 231
    .local v5, "voicedSoundMark":Z
    add-int/lit8 v6, v4, -0x1

    if-ge v1, v6, :cond_52

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v7, 0xff9e

    if-eq v6, v7, :cond_34

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v7, 0xff9f

    if-ne v6, v7, :cond_52

    .line 232
    :cond_34
    add-int/lit8 v6, v1, 0x2

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "s":Ljava/lang/String;
    sget-object v6, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 234
    sget-object v6, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToFull:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/4 v5, 0x1

    .line 237
    add-int/lit8 v1, v1, 0x1

    .line 240
    .end local v3    # "s":Ljava/lang/String;
    :cond_52
    if-nez v5, :cond_5b

    .line 241
    invoke-static {v0}, Lcom/lge/text/JapaneseUtil;->toFullWidthKatakana(C)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public static toHalfWidthKatakana(C)C
    .registers 4
    .param p0, "c"    # C

    .prologue
    .line 164
    invoke-static {p0}, Lcom/lge/text/JapaneseUtil;->isHiraganaLetter(C)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 165
    sget-object v1, Lcom/lge/text/KatakanaMap;->MAP_TO_HALF:[C

    add-int/lit8 v2, p0, 0x60

    add-int/lit16 v2, v2, -0x30a1

    aget-char v0, v1, v2

    .line 166
    .local v0, "mapped":C
    if-eqz v0, :cond_11

    .line 179
    .end local v0    # "mapped":C
    :cond_10
    :goto_10
    return v0

    .restart local v0    # "mapped":C
    :cond_11
    move v0, p0

    .line 166
    goto :goto_10

    .line 167
    .end local v0    # "mapped":C
    :cond_13
    invoke-static {p0}, Lcom/lge/text/JapaneseUtil;->isFullWidthKatakanaLetter(C)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 168
    sget-object v1, Lcom/lge/text/KatakanaMap;->MAP_TO_HALF:[C

    add-int/lit16 v2, p0, -0x30a1

    aget-char v0, v1, v2

    .line 169
    .restart local v0    # "mapped":C
    if-nez v0, :cond_10

    move v0, p0

    goto :goto_10

    .line 170
    .end local v0    # "mapped":C
    :cond_23
    const/16 v1, 0x309b

    if-ne p0, v1, :cond_2c

    .line 171
    const p0, 0xff9e

    :cond_2a
    :goto_2a
    move v0, p0

    .line 179
    goto :goto_10

    .line 172
    :cond_2c
    const/16 v1, 0x309c

    if-ne p0, v1, :cond_34

    .line 173
    const p0, 0xff9f

    .line 174
    goto :goto_2a

    :cond_34
    const/16 v1, 0x30fb

    if-ne p0, v1, :cond_3c

    .line 175
    const p0, 0xff65

    .line 176
    goto :goto_2a

    :cond_3c
    const/16 v1, 0x30fc

    if-ne p0, v1, :cond_2a

    .line 177
    const p0, 0xff70

    goto :goto_2a
.end method

.method public static toHalfWidthKatakana(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 258
    if-nez p0, :cond_4

    .line 259
    const/4 v4, 0x0

    .line 278
    :goto_3
    return-object v4

    .line 262
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v2, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_15

    .line 278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 265
    :cond_15
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 267
    .local v0, "c":C
    invoke-static {v0}, Lcom/lge/text/JapaneseUtil;->isHiraganaLetter(C)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 268
    invoke-static {v0}, Lcom/lge/text/JapaneseUtil;->toFullWidthKatakana(C)C

    move-result v0

    .line 270
    :cond_23
    sget-object v4, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 271
    sget-object v4, Lcom/lge/text/KatakanaMap;->sVoicedSoundMarkToHalf:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 272
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .end local v3    # "s":Ljava/lang/String;
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 274
    :cond_41
    invoke-static {v0}, Lcom/lge/text/JapaneseUtil;->toHalfWidthKatakana(C)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3e
.end method

.method public static toHiragana(C)C
    .registers 4
    .param p0, "c"    # C

    .prologue
    .line 106
    invoke-static {p0}, Lcom/lge/text/JapaneseUtil;->isFullWidthKatakanaLetter(C)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x30f7

    if-ge p0, v1, :cond_e

    .line 107
    add-int/lit8 v1, p0, -0x60

    int-to-char v0, v1

    .line 118
    :cond_d
    :goto_d
    return v0

    .line 108
    :cond_e
    invoke-static {p0}, Lcom/lge/text/JapaneseUtil;->isHalfWidthKatakanaLetter(C)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 109
    sget-object v1, Lcom/lge/text/KatakanaMap;->MAP_TO_FULL:[C

    const v2, 0xff66

    sub-int v2, p0, v2

    aget-char v1, v1, v2

    add-int/lit8 v1, v1, -0x60

    int-to-char v0, v1

    .line 110
    .local v0, "mapped":C
    if-nez v0, :cond_d

    move v0, p0

    goto :goto_d

    .line 111
    .end local v0    # "mapped":C
    :cond_24
    const v1, 0xff9e

    if-ne p0, v1, :cond_2d

    .line 112
    const/16 p0, 0x309b

    :cond_2b
    :goto_2b
    move v0, p0

    .line 118
    goto :goto_d

    .line 113
    :cond_2d
    const v1, 0xff9f

    if-ne p0, v1, :cond_35

    .line 114
    const/16 p0, 0x309c

    .line 115
    goto :goto_2b

    :cond_35
    const v1, 0xff70

    if-ne p0, v1, :cond_2b

    .line 116
    const/16 p0, 0x30fc

    goto :goto_2b
.end method

.method public static toHiragana(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 192
    if-nez p0, :cond_4

    .line 193
    const/4 v4, 0x0

    .line 206
    :goto_3
    return-object v4

    .line 196
    :cond_4
    invoke-static {p0}, Lcom/lge/text/JapaneseUtil;->toFullWidthKatakana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "textKF":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_19

    .line 206
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 200
    :cond_19
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 201
    .local v0, "c":C
    invoke-static {v0}, Lcom/lge/text/JapaneseUtil;->isJapaneseCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 202
    invoke-static {v0}, Lcom/lge/text/JapaneseUtil;->toHiragana(C)C

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 199
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method
