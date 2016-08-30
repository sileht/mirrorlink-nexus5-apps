.class public Landroid/text/LGEmojiUtil;
.super Ljava/lang/Object;
.source "LGEmojiUtil.java"


# static fields
.field public static final NO_EMOJI_PRIVATE_IME_OPTION:Ljava/lang/String; = "com.lge.android.editmode.noEmoji"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOffsetEmoji(I[CI)I
    .registers 6
    .param p0, "offset"    # I
    .param p1, "characters"    # [C
    .param p2, "length"    # I

    .prologue
    .line 14
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v1, :cond_1b

    .line 15
    if-eqz p1, :cond_1b

    if-ltz p0, :cond_1b

    if-ge p0, p2, :cond_1b

    array-length v1, p1

    if-ge p0, v1, :cond_1b

    .line 16
    add-int/lit8 v1, p0, -0x1

    if-ge v1, p2, :cond_1c

    add-int/lit8 v1, p0, -0x1

    invoke-static {p1, v1}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable([CI)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 17
    add-int/lit8 p0, p0, 0x3

    .line 37
    :cond_1b
    :goto_1b
    return p0

    .line 18
    :cond_1c
    add-int/lit8 v1, p0, -0x2

    if-ge v1, p2, :cond_2b

    .line 19
    add-int/lit8 v1, p0, -0x2

    invoke-static {p1, v1}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable([CI)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 20
    add-int/lit8 p0, p0, 0x2

    .line 21
    goto :goto_1b

    :cond_2b
    add-int/lit8 v1, p0, -0x3

    if-ge v1, p2, :cond_3a

    .line 22
    add-int/lit8 v1, p0, -0x3

    invoke-static {p1, v1}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable([CI)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 23
    add-int/lit8 p0, p0, 0x1

    .line 24
    goto :goto_1b

    :cond_3a
    add-int/lit8 v1, p0, -0x1

    if-ltz v1, :cond_49

    add-int/lit8 v1, p0, -0x1

    invoke-static {p1, v1}, Lcom/lge/emoji/EmojiUtil;->isDiacriticalMark([CI)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 25
    add-int/lit8 p0, p0, 0x1

    .line 26
    goto :goto_1b

    :cond_49
    add-int/lit8 v1, p0, -0x1

    if-ltz v1, :cond_6a

    aget-char v1, p1, p0

    const v2, 0xdc00

    if-lt v1, v2, :cond_6a

    .line 27
    aget-char v1, p1, p0

    const v2, 0xdfff

    if-gt v1, v2, :cond_6a

    .line 28
    add-int/lit8 v1, p0, -0x1

    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    .line 29
    .local v0, "codept":I
    invoke-static {v0}, Lcom/lge/emoji/EmojiUtil;->isInEmojiUnicodeTable(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 30
    add-int/lit8 p0, p0, 0x1

    .line 32
    goto :goto_1b

    .end local v0    # "codept":I
    :cond_6a
    aget-char v1, p1, p0

    invoke-static {v1}, Lcom/lge/emoji/EmojiUtil;->isInEmojiUnicodeTable(C)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 33
    add-int/lit8 p0, p0, 0x1

    goto :goto_1b
.end method

.method public static adjustTextRunCursor(Ljava/lang/CharSequence;IIII)I
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "offset"    # I
    .param p4, "cursorOpt"    # I

    .prologue
    .line 54
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v0, :cond_19

    if-eqz p0, :cond_19

    .line 55
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1a

    add-int/lit8 v0, p3, -0x2

    if-lt v0, p1, :cond_1a

    if-ge p3, p2, :cond_1a

    .line 56
    add-int/lit8 v0, p3, -0x2

    invoke-static {p0, v0}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 57
    add-int/lit8 p3, p3, -0x2

    .line 63
    :cond_19
    :goto_19
    return p3

    .line 58
    :cond_1a
    if-nez p4, :cond_19

    if-lt p3, p1, :cond_19

    add-int/lit8 v0, p3, 0x2

    if-ge v0, p2, :cond_19

    .line 59
    add-int/lit8 v0, p3, 0x2

    invoke-static {p0, v0}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 60
    add-int/lit8 p3, p3, 0x2

    goto :goto_19
.end method

.method public static adjustTextRunCursor([CIIII)I
    .registers 6
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "offset"    # I
    .param p4, "cursorOpt"    # I

    .prologue
    .line 41
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v0, :cond_19

    if-eqz p0, :cond_19

    .line 42
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1a

    add-int/lit8 v0, p3, -0x2

    if-lt v0, p1, :cond_1a

    if-ge p3, p2, :cond_1a

    .line 43
    add-int/lit8 v0, p3, -0x2

    invoke-static {p0, v0}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable([CI)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 44
    add-int/lit8 p3, p3, -0x2

    .line 50
    :cond_19
    :goto_19
    return p3

    .line 45
    :cond_1a
    if-nez p4, :cond_19

    if-lt p3, p1, :cond_19

    add-int/lit8 v0, p3, 0x2

    if-ge v0, p2, :cond_19

    .line 46
    add-int/lit8 v0, p3, 0x2

    invoke-static {p0, v0}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable([CI)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 47
    add-int/lit8 p3, p3, 0x2

    goto :goto_19
.end method

.method public static filterEmojiIfNeeded(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "noEmojiEditMode"    # Z

    .prologue
    .line 67
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 68
    invoke-static {p0}, Lcom/lge/emoji/EmojiUtil;->filterEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 70
    .end local p0    # "text":Ljava/lang/CharSequence;
    :cond_a
    return-object p0
.end method

.method public static hasEmoji(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/lge/emoji/EmojiUtil;->hasEmoji(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static hasNoEmojiEditModeOption(Ljava/lang/String;)Z
    .registers 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v0, :cond_10

    .line 85
    if-eqz p0, :cond_10

    const-string v0, "com.lge.android.editmode.noEmoji"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 86
    const/4 v0, 0x1

    .line 89
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isEmoji([CI)Z
    .registers 4
    .param p0, "text"    # [C
    .param p1, "index"    # I

    .prologue
    .line 97
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v1, :cond_28

    if-ltz p1, :cond_28

    array-length v1, p0

    if-ge p1, v1, :cond_28

    .line 98
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    .line 99
    .local v0, "codept":I
    int-to-char v1, v0

    invoke-static {v1}, Lcom/lge/emoji/EmojiUtil;->isInEmojiUnicodeTable(C)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {v0}, Lcom/lge/emoji/EmojiUtil;->isInEmojiUnicodeTable(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 100
    invoke-static {p0, p1}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable([CI)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {p0, p1}, Lcom/lge/emoji/EmojiUtil;->isDiacriticalMark([CI)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 101
    :cond_26
    const/4 v1, 0x1

    .line 104
    .end local v0    # "codept":I
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public static isInCountryCodeTable(Ljava/lang/CharSequence;II)I
    .registers 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "keep"    # I

    .prologue
    .line 75
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v0, :cond_12

    add-int/lit8 v0, p2, -0x2

    if-lt v0, p1, :cond_12

    .line 76
    add-int/lit8 v0, p2, -0x2

    invoke-static {p0, v0}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 77
    add-int/lit8 p2, p2, -0x2

    .line 80
    :cond_12
    return p2
.end method
