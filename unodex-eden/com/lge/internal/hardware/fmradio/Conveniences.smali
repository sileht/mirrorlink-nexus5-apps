.class public Lcom/lge/internal/hardware/fmradio/Conveniences;
.super Ljava/lang/Object;
.source "Conveniences.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertArabNum(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "actualStr"    # Ljava/lang/String;

    .prologue
    .line 27
    const/16 v0, 0x660

    invoke-static {p0, v0}, Lcom/lge/internal/hardware/fmradio/Conveniences;->convertNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertFarsiNum(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "actualStr"    # Ljava/lang/String;

    .prologue
    .line 23
    const/16 v0, 0x6f0

    invoke-static {p0, v0}, Lcom/lge/internal/hardware/fmradio/Conveniences;->convertNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertNum(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p0, "actualStr"    # Ljava/lang/String;
    .param p1, "checkNum"    # I

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "check":I
    if-nez p0, :cond_6

    .line 33
    const-string v4, ""

    .line 48
    :goto_5
    return-object v4

    .line 35
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-array v1, v4, [C

    .line 37
    .local v1, "arabstr":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_1d

    .line 47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 48
    .local v0, "ArabStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 38
    .end local v0    # "ArabStr":Ljava/lang/String;
    :cond_1d
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 39
    if-ltz v2, :cond_3e

    const/16 v4, 0x9

    if-gt v2, v4, :cond_3e

    .line 40
    new-instance v4, Ljava/lang/Character;

    add-int v5, v2, p1

    int-to-char v5, v5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v1, v3

    .line 37
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 43
    :cond_3e
    new-instance v4, Ljava/lang/Character;

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v1, v3

    goto :goto_3b
.end method

.method public static intentDeepEquals(Landroid/content/Intent;Landroid/content/Intent;)Z
    .registers 12
    .param p0, "a"    # Landroid/content/Intent;
    .param p1, "b"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 73
    if-nez p0, :cond_8

    if-nez p1, :cond_8

    move v7, v6

    .line 125
    :cond_7
    :goto_7
    return v7

    .line 76
    :cond_8
    if-nez p0, :cond_66

    move v8, v6

    :goto_b
    if-nez p1, :cond_68

    move v5, v6

    :goto_e
    if-ne v8, v5, :cond_7

    .line 80
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6a

    move v5, v6

    :goto_17
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6c

    move v8, v6

    :goto_1e
    if-ne v5, v8, :cond_7

    .line 83
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_34

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 87
    :cond_34
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_6e

    move v5, v6

    :goto_3b
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_70

    move v8, v6

    :goto_42
    if-ne v5, v8, :cond_7

    .line 90
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_58

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 94
    :cond_58
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 95
    .local v1, "ax":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 96
    .local v3, "bx":Landroid/os/Bundle;
    if-nez v1, :cond_72

    if-nez v3, :cond_72

    move v7, v6

    .line 97
    goto :goto_7

    .end local v1    # "ax":Landroid/os/Bundle;
    .end local v3    # "bx":Landroid/os/Bundle;
    :cond_66
    move v8, v7

    .line 76
    goto :goto_b

    :cond_68
    move v5, v7

    goto :goto_e

    :cond_6a
    move v5, v7

    .line 80
    goto :goto_17

    :cond_6c
    move v8, v7

    goto :goto_1e

    :cond_6e
    move v5, v7

    .line 87
    goto :goto_3b

    :cond_70
    move v8, v7

    goto :goto_42

    .line 99
    .restart local v1    # "ax":Landroid/os/Bundle;
    .restart local v3    # "bx":Landroid/os/Bundle;
    :cond_72
    if-nez v1, :cond_88

    move v8, v6

    :goto_75
    if-nez v3, :cond_8a

    move v5, v6

    :goto_78
    if-ne v8, v5, :cond_7

    .line 102
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 103
    .local v0, "ak":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 104
    .local v2, "bk":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_8c

    if-nez v2, :cond_8c

    move v7, v6

    .line 105
    goto :goto_7

    .end local v0    # "ak":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "bk":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_88
    move v8, v7

    .line 99
    goto :goto_75

    :cond_8a
    move v5, v7

    goto :goto_78

    .line 107
    .restart local v0    # "ak":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "bk":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8c
    if-nez v0, :cond_ab

    move v8, v6

    :goto_8f
    if-nez v2, :cond_ad

    move v5, v6

    :goto_92
    if-ne v8, v5, :cond_7

    .line 110
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v8

    if-ne v5, v8, :cond_7

    .line 114
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_af

    move v7, v6

    .line 125
    goto/16 :goto_7

    :cond_ab
    move v8, v7

    .line 107
    goto :goto_8f

    :cond_ad
    move v5, v7

    goto :goto_92

    .line 114
    :cond_af
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_c1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a2

    .line 118
    :cond_c1
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_e1

    move v5, v6

    :goto_c8
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_e3

    move v8, v6

    :goto_cf
    if-ne v5, v8, :cond_7

    .line 121
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a2

    goto/16 :goto_7

    :cond_e1
    move v5, v7

    .line 118
    goto :goto_c8

    :cond_e3
    move v8, v7

    goto :goto_cf
.end method

.method public static isR2LLanguage()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "defaultlanguage":Ljava/lang/String;
    const-string v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method public static localizeNumbers(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "actualStr"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "ar"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 53
    invoke-static {p0}, Lcom/lge/internal/hardware/fmradio/Conveniences;->convertArabNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    .end local p0    # "actualStr":Ljava/lang/String;
    :cond_14
    :goto_14
    return-object p0

    .line 55
    .restart local p0    # "actualStr":Ljava/lang/String;
    :cond_15
    const-string v0, "fa"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 56
    invoke-static {p0}, Lcom/lge/internal/hardware/fmradio/Conveniences;->convertFarsiNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_14
.end method
