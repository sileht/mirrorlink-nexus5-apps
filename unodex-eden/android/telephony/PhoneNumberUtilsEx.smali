.class public Landroid/telephony/PhoneNumberUtilsEx;
.super Landroid/telephony/PhoneNumberUtils;
.source "PhoneNumberUtilsEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils;-><init>()V

    return-void
.end method

.method public static ajc$interMethodDispatch2$android_telephony_PhoneNumberUtilsEx$indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$interMethod$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static ajc$interMethodDispatch2$android_telephony_PhoneNumberUtilsEx$matchIntlPrefix(Ljava/lang/String;I)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$interMethod$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static ajc$interMethodDispatch2$android_telephony_PhoneNumberUtilsEx$matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$interMethod$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static ajc$interMethodDispatch2$android_telephony_PhoneNumberUtilsEx$matchTrunkPrefix(Ljava/lang/String;I)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$interMethod$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 18
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "minMatch"    # I

    .prologue
    .line 10
    const/4 v10, 0x0

    .line 11
    .local v10, "numNonDialableCharsInA":I
    const/4 v11, 0x0

    .line 13
    .local v11, "numNonDialableCharsInB":I
    if-eqz p0, :cond_6

    if-nez p1, :cond_e

    :cond_6
    move-object/from16 v0, p1

    if-ne p0, v0, :cond_c

    const/4 v13, 0x1

    .line 103
    :goto_b
    return v13

    .line 13
    :cond_c
    const/4 v13, 0x0

    goto :goto_b

    .line 15
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_1a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1c

    .line 16
    :cond_1a
    const/4 v13, 0x0

    goto :goto_b

    .line 19
    :cond_1c
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v7

    .line 20
    .local v7, "ia":I
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v8

    .line 21
    .local v8, "ib":I
    const/4 v9, 0x0

    .line 23
    .local v9, "matched":I
    :cond_25
    :goto_25
    if-ltz v7, :cond_29

    if-gez v8, :cond_3f

    .line 51
    :cond_29
    move/from16 v0, p2

    if-ge v9, v0, :cond_75

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v5, v13, v10

    .line 53
    .local v5, "effectiveALen":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v6, v13, v11

    .line 58
    .local v6, "effectiveBLen":I
    if-ne v5, v6, :cond_73

    if-ne v5, v9, :cond_73

    .line 59
    const/4 v13, 0x1

    goto :goto_b

    .line 25
    .end local v5    # "effectiveALen":I
    .end local v6    # "effectiveBLen":I
    :cond_3f
    const/4 v12, 0x0

    .line 27
    .local v12, "skipCmp":Z
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 29
    .local v3, "ca":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtilsEx;->isDialable(C)Z

    move-result v13

    if-nez v13, :cond_4f

    .line 30
    add-int/lit8 v7, v7, -0x1

    .line 31
    const/4 v12, 0x1

    .line 32
    add-int/lit8 v10, v10, 0x1

    .line 35
    :cond_4f
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 37
    .local v4, "cb":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtilsEx;->isDialable(C)Z

    move-result v13

    if-nez v13, :cond_60

    .line 38
    add-int/lit8 v8, v8, -0x1

    .line 39
    const/4 v12, 0x1

    .line 40
    add-int/lit8 v11, v11, 0x1

    .line 43
    :cond_60
    if-nez v12, :cond_25

    .line 44
    if-eq v4, v3, :cond_6c

    const/16 v13, 0x4e

    if-eq v3, v13, :cond_6c

    const/16 v13, 0x4e

    if-ne v4, v13, :cond_29

    .line 47
    :cond_6c
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    .line 62
    .end local v3    # "ca":C
    .end local v4    # "cb":C
    .end local v12    # "skipCmp":Z
    .restart local v5    # "effectiveALen":I
    .restart local v6    # "effectiveBLen":I
    :cond_73
    const/4 v13, 0x0

    goto :goto_b

    .line 66
    .end local v5    # "effectiveALen":I
    .end local v6    # "effectiveBLen":I
    :cond_75
    move/from16 v0, p2

    if-lt v9, v0, :cond_7f

    if-ltz v7, :cond_7d

    if-gez v8, :cond_7f

    .line 67
    :cond_7d
    const/4 v13, 0x1

    goto :goto_b

    .line 79
    :cond_7f
    add-int/lit8 v13, v7, 0x1

    invoke-static {p0, v13}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_94

    .line 80
    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_94

    .line 82
    const/4 v13, 0x1

    goto/16 :goto_b

    .line 85
    :cond_94
    add-int/lit8 v13, v7, 0x1

    invoke-static {p0, v13}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_a9

    .line 86
    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_a9

    .line 88
    const/4 v13, 0x1

    goto/16 :goto_b

    .line 91
    :cond_a9
    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_be

    .line 92
    add-int/lit8 v13, v7, 0x1

    invoke-static {p0, v13}, Landroid/telephony/PhoneNumberUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$android_telephony_PhoneNumberUtilsEx$PrivateAccess$android_telephony_PhoneNumberUtilsEx$matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_be

    .line 94
    const/4 v13, 0x1

    goto/16 :goto_b

    .line 97
    :cond_be
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2b

    if-ne v13, v14, :cond_e5

    const/4 v1, 0x1

    .line 98
    .local v1, "aPlusFirst":Z
    :goto_c8
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2b

    if-ne v13, v14, :cond_e7

    const/4 v2, 0x1

    .line 99
    .local v2, "bPlusFirst":Z
    :goto_d4
    const/4 v13, 0x4

    if-ge v7, v13, :cond_e9

    const/4 v13, 0x4

    if-ge v8, v13, :cond_e9

    if-nez v1, :cond_de

    if-eqz v2, :cond_e9

    :cond_de
    if-eqz v1, :cond_e2

    if-nez v2, :cond_e9

    .line 100
    :cond_e2
    const/4 v13, 0x1

    goto/16 :goto_b

    .line 97
    .end local v1    # "aPlusFirst":Z
    .end local v2    # "bPlusFirst":Z
    :cond_e5
    const/4 v1, 0x0

    goto :goto_c8

    .line 98
    .restart local v1    # "aPlusFirst":Z
    :cond_e7
    const/4 v2, 0x0

    goto :goto_d4

    .line 103
    .restart local v2    # "bPlusFirst":Z
    :cond_e9
    const/4 v13, 0x0

    goto/16 :goto_b
.end method
