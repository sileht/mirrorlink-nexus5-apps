.class public Lcom/lge/wifi/extension/LgWifiSsidUtil;
.super Ljava/lang/Object;
.source "LgWifiSsidUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LgWifiSsidUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static containsHangul(Ljava/lang/String;)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 166
    if-nez p0, :cond_4

    .line 179
    :cond_3
    :goto_3
    return v3

    .line 168
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 170
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 171
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 172
    .local v2, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 173
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 174
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v4, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 175
    :cond_2b
    const/4 v3, 0x1

    goto :goto_3

    .line 168
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public static getConfigForUtf8Hidden(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .registers 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-static {p0}, Lcom/lge/wifi/extension/LgWifiSsidUtil;->isConfigForUtf8Hidden(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object v0, v1

    .line 213
    :cond_8
    :goto_8
    return-object v0

    .line 206
    :cond_9
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 207
    .local v0, "configUtf8":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/lge/wifi/extension/LgWifiSsidUtil;->setSSIDcheckingUniCode([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 208
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 209
    const-string v2, "LgWifiSsidUtil"

    const-string v3, "getConfigForUtf8Hidden: UTF8 SSID is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 210
    goto :goto_8
.end method

.method public static isConfigForUtf8Hidden(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 6
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 219
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useLgeKtCm()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useKoreanSsid()Z

    move-result v3

    if-nez v3, :cond_10

    .line 238
    :cond_f
    :goto_f
    return v1

    .line 224
    :cond_10
    if-eqz p0, :cond_f

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v4, :cond_1a

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 228
    :cond_1a
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v3, :cond_f

    .line 230
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v4, :cond_4b

    move v0, v2

    .line 231
    .local v0, "newNetwork":Z
    :goto_23
    if-eqz v0, :cond_f

    .line 233
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/wifi/extension/LgWifiSsidUtil;->isHangulSsid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 237
    const-string v1, "LgWifiSsidUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isConfigForUtf8Hidden ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is UTF8 Hidden"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 238
    goto :goto_f

    .end local v0    # "newNetwork":Z
    :cond_4b
    move v0, v1

    .line 230
    goto :goto_23
.end method

.method public static isHangulSsid(Ljava/lang/String;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 183
    if-nez p0, :cond_4

    .line 196
    :cond_3
    :goto_3
    return v2

    .line 184
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 185
    .local v1, "maxLen":I
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v0, v3

    .line 187
    .local v0, "bytelen":I
    if-eqz v1, :cond_3

    if-eq v0, v1, :cond_3

    .line 191
    invoke-static {p0}, Lcom/lge/wifi/extension/LgWifiSsidUtil;->containsHangul(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public static isSsidForUtf8Hidden(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useLgeKtCm()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useKoreanSsid()Z

    move-result v1

    if-nez v1, :cond_e

    .line 262
    :cond_d
    :goto_d
    return v0

    .line 249
    :cond_e
    if-eqz p0, :cond_d

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 253
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_d

    .line 257
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/wifi/extension/LgWifiSsidUtil;->isHangulSsid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 261
    const-string v0, "LgWifiSsidUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSsidForUtf8Hidden ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is Hangul Hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static isUniCodeSSID([B)Z
    .registers 9
    .param p0, "byte_array"    # [B

    .prologue
    const/16 v7, 0x80

    .line 28
    const/4 v3, 0x0

    .line 29
    .local v3, "unicodeSSID":Z
    const/4 v4, 0x0

    .line 31
    .local v4, "unicode_step":I
    if-nez p0, :cond_8

    const/4 v5, 0x0

    .line 92
    :goto_7
    return v5

    .line 33
    :cond_8
    const/4 v2, 0x0

    .line 34
    .local v2, "offset":I
    array-length v1, p0

    .line 36
    .local v1, "length":I
    move v0, v2

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_13

    aget-byte v5, p0, v0

    const/16 v6, 0xa

    if-ne v5, v6, :cond_18

    .line 87
    :cond_13
    :goto_13
    if-eqz v4, :cond_16

    .line 88
    const/4 v3, 0x0

    :cond_16
    move v5, v3

    .line 92
    goto :goto_7

    .line 37
    :cond_18
    if-lez v4, :cond_2a

    .line 38
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v7, :cond_28

    .line 39
    add-int/lit8 v4, v4, -0x1

    .line 40
    if-nez v4, :cond_25

    .line 41
    const/4 v3, 0x1

    .line 36
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 45
    :cond_28
    const/4 v3, 0x0

    .line 46
    goto :goto_13

    .line 49
    :cond_2a
    if-gez v4, :cond_36

    .line 50
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v7, :cond_34

    .line 51
    const/4 v4, 0x0

    .line 52
    goto :goto_25

    .line 54
    :cond_34
    const/4 v3, 0x0

    .line 55
    goto :goto_13

    .line 58
    :cond_36
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_25

    .line 60
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_46

    .line 62
    const/4 v4, 0x2

    .line 63
    goto :goto_25

    .line 64
    :cond_46
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_50

    .line 66
    const/4 v4, 0x1

    .line 67
    goto :goto_25

    .line 68
    :cond_50
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf8

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_5a

    .line 70
    const/4 v4, 0x3

    .line 71
    goto :goto_25

    .line 72
    :cond_5a
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xfc

    const/16 v6, 0xf8

    if-ne v5, v6, :cond_64

    .line 74
    const/4 v4, 0x4

    .line 75
    goto :goto_25

    .line 76
    :cond_64
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xfe

    const/16 v6, 0xfc

    if-ne v5, v6, :cond_6e

    .line 78
    const/4 v4, 0x5

    .line 79
    goto :goto_25

    .line 81
    :cond_6e
    const/4 v3, 0x0

    .line 82
    goto :goto_13
.end method

.method public static setSSIDcheckingUniCode([B)Ljava/lang/String;
    .registers 8
    .param p0, "ssid_byte"    # [B

    .prologue
    const/16 v6, 0x80

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "unicodeSSID":Z
    const/4 v3, 0x0

    .line 102
    .local v3, "unicode_step":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v4, p0

    if-ge v0, v4, :cond_c

    aget-byte v4, p0, v0

    if-nez v4, :cond_35

    .line 145
    :cond_c
    :goto_c
    if-eqz v3, :cond_f

    .line 146
    const/4 v1, 0x0

    .line 150
    :cond_f
    if-eqz v1, :cond_8d

    .line 151
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 152
    .local v2, "unicodeSsid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u200b\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    :goto_34
    return-object v2

    .line 103
    .end local v2    # "unicodeSsid":Ljava/lang/String;
    :cond_35
    if-lez v3, :cond_47

    .line 104
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v6, :cond_45

    .line 105
    add-int/lit8 v3, v3, -0x1

    .line 106
    if-nez v3, :cond_42

    .line 107
    const/4 v1, 0x1

    .line 102
    :cond_42
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 111
    :cond_45
    const/4 v1, 0x0

    .line 112
    goto :goto_c

    .line 114
    :cond_47
    if-gez v3, :cond_53

    .line 115
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v6, :cond_51

    .line 116
    const/4 v3, 0x0

    .line 117
    goto :goto_42

    .line 119
    :cond_51
    const/4 v1, 0x0

    .line 120
    goto :goto_c

    .line 122
    :cond_53
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_42

    .line 124
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_63

    .line 125
    const/4 v3, 0x2

    .line 126
    goto :goto_42

    .line 127
    :cond_63
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xe0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_6d

    .line 128
    const/4 v3, 0x1

    .line 129
    goto :goto_42

    .line 130
    :cond_6d
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf8

    const/16 v5, 0xf0

    if-ne v4, v5, :cond_77

    .line 131
    const/4 v3, 0x3

    .line 132
    goto :goto_42

    .line 133
    :cond_77
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xfc

    const/16 v5, 0xf8

    if-ne v4, v5, :cond_81

    .line 134
    const/4 v3, 0x4

    .line 135
    goto :goto_42

    .line 136
    :cond_81
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xfe

    const/16 v5, 0xfc

    if-ne v4, v5, :cond_8b

    .line 137
    const/4 v3, 0x5

    .line 138
    goto :goto_42

    .line 140
    :cond_8b
    const/4 v1, 0x0

    .line 141
    goto :goto_c

    .line 155
    :cond_8d
    :try_start_8d
    new-instance v2, Ljava/lang/String;

    const-string v4, "KSC5601"

    invoke-direct {v2, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_94
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8d .. :try_end_94} :catch_95

    .restart local v2    # "unicodeSsid":Ljava/lang/String;
    goto :goto_34

    .line 157
    .end local v2    # "unicodeSsid":Ljava/lang/String;
    :catch_95
    move-exception v4

    const/4 v2, 0x0

    .restart local v2    # "unicodeSsid":Ljava/lang/String;
    goto :goto_34
.end method
