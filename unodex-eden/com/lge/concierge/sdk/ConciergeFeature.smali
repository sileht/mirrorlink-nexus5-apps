.class public Lcom/lge/concierge/sdk/ConciergeFeature;
.super Ljava/lang/Object;
.source "ConciergeFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;,
        Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;
    }
.end annotation


# static fields
.field public static final DEFAULT_OFF:Ljava/lang/String; = "default_off"

.field private static final EXCLUDE:Ljava/lang/String; = ".exclude"

.field public static final FEATURING:Ljava/lang/String; = "featuring"

.field private static final INCLUDE:Ljava/lang/String; = ".include"

.field private static final SETTING_JSON_PATH:Ljava/lang/String; = "ConciergeBoard/card_settings/card_settings.json"

.field private static final TAG:Ljava/lang/String; = "[Concierge][Featuring]"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 187
    .local v4, "values":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 188
    .local v0, "decision":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_d

    .line 195
    :goto_c
    return v0

    .line 189
    :cond_d
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_14} :catch_1c

    move-result v5

    if-eqz v5, :cond_19

    .line 191
    const/4 v0, 0x1

    .line 192
    goto :goto_c

    .line 188
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 196
    .end local v0    # "decision":Z
    .end local v2    # "i":I
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "values":Lorg/json/JSONArray;
    :catch_1c
    move-exception v1

    .line 197
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "[Concierge][Featuring]"

    const-string v6, "unsupported json format : %s should be array"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v5, Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;

    invoke-direct {v5}, Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;-><init>()V

    throw v5
.end method

.method public static getCardByDbKey(Landroid/content/Context;Ljava/lang/String;)Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    const-string v11, "ConciergeBoard/card_settings/card_settings.json"

    invoke-static {p0, v11}, Lcom/lge/concierge/sdk/FormPathHelper;->requestFormUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "cardSettingJsonFile":Ljava/lang/String;
    const-string v11, "[Concierge][Featuring]"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Trying to open card setting file : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/lge/concierge/sdk/ConciergeFeature;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 124
    .local v9, "jsonString":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    .local v8, "json":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_30
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_38

    .line 163
    const/4 v0, 0x0

    :goto_37
    return-object v0

    .line 127
    :cond_38
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    .local v4, "categoryName":Ljava/lang/String;
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 130
    .local v2, "cardSettingArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_43
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_30

    .line 131
    new-instance v0, Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;

    invoke-direct {v0}, Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;-><init>()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4e} :catch_d0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4e} :catch_d9

    .line 133
    .local v0, "card":Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;
    :try_start_4e
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 134
    .local v1, "cardJson":Lorg/json/JSONObject;
    const-string v11, "db_key"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "dbKey":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b2

    .line 136
    const-string v11, "package"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;->mPackage:Ljava/lang/String;

    .line 137
    const-string v11, "min_version"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;->mMinVersion:I

    .line 138
    iput-object v5, v0, Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;->mDbKey:Ljava/lang/String;

    .line 139
    const-string v11, "featuring"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_86

    .line 141
    const-string v11, "featuring"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 140
    invoke-static {v11}, Lcom/lge/concierge/sdk/ConciergeFeature;->isCardAvailable(Lorg/json/JSONObject;)Z

    move-result v11

    iput-boolean v11, v0, Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;->mIsFeatureAvailable:Z

    .line 143
    :cond_86
    const-string v11, "[Concierge][Featuring]"

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;->mDbKey:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "  : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v0, Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;->mIsFeatureAvailable:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_a6} :catch_a7
    .catch Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat; {:try_start_4e .. :try_end_a6} :catch_c7
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_a6} :catch_d0

    goto :goto_37

    .line 148
    .end local v1    # "cardJson":Lorg/json/JSONObject;
    .end local v5    # "dbKey":Ljava/lang/String;
    :catch_a7
    move-exception v6

    .line 149
    .local v6, "e":Lorg/json/JSONException;
    :try_start_a8
    const-string v11, "[Concierge][Featuring]"

    const-string v12, "Failed to parse card setting item. Skip for this one."

    invoke-static {v11, v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_af} :catch_d0
    .catch Lorg/json/JSONException; {:try_start_a8 .. :try_end_af} :catch_d9

    .line 130
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_af
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 146
    .restart local v1    # "cardJson":Lorg/json/JSONObject;
    .restart local v5    # "dbKey":Ljava/lang/String;
    :cond_b2
    :try_start_b2
    const-string v11, "[Concierge][Featuring]"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "DB Key = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Lorg/json/JSONException; {:try_start_b2 .. :try_end_c6} :catch_a7
    .catch Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat; {:try_start_b2 .. :try_end_c6} :catch_c7
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_c6} :catch_d0

    goto :goto_af

    .line 151
    .end local v1    # "cardJson":Lorg/json/JSONObject;
    .end local v5    # "dbKey":Ljava/lang/String;
    :catch_c7
    move-exception v6

    .line 152
    .local v6, "e":Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;
    :try_start_c8
    const-string v11, "[Concierge][Featuring]"

    const-string v12, "Failed to parse card setting item. Skip for this one."

    invoke-static {v11, v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cf} :catch_d0
    .catch Lorg/json/JSONException; {:try_start_c8 .. :try_end_cf} :catch_d9

    goto :goto_af

    .line 157
    .end local v0    # "card":Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;
    .end local v2    # "cardSettingArray":Lorg/json/JSONArray;
    .end local v3    # "cardSettingJsonFile":Ljava/lang/String;
    .end local v4    # "categoryName":Ljava/lang/String;
    .end local v6    # "e":Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;
    .end local v7    # "i":I
    .end local v8    # "json":Lorg/json/JSONObject;
    .end local v9    # "jsonString":Ljava/lang/String;
    .end local v10    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_d0
    move-exception v6

    .line 158
    .local v6, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "Failed to load card settings file"

    invoke-direct {v11, v12, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 159
    .end local v6    # "e":Ljava/io/IOException;
    :catch_d9
    move-exception v6

    .line 160
    .local v6, "e":Lorg/json/JSONException;
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "Failed to parse card settings JSON"

    invoke-direct {v11, v12, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method

.method public static getJsonFromInputStream(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "bufferSize"    # I

    .prologue
    .line 67
    new-array v0, p1, [C

    .line 68
    .local v0, "buffer":[C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v3, "out":Ljava/lang/StringBuilder;
    :try_start_7
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v2, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_e} :catch_28
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_31

    .line 73
    .local v2, "in":Ljava/io/Reader;
    :goto_e
    const/4 v5, 0x0

    :try_start_f
    array-length v6, v0

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/Reader;->read([CII)I
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_23

    move-result v4

    .line 74
    .local v4, "rsz":I
    if-gez v4, :cond_1e

    .line 80
    :try_start_16
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_19} :catch_28
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_31

    .line 87
    .end local v2    # "in":Ljava/io/Reader;
    .end local v4    # "rsz":I
    :goto_19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 77
    .restart local v2    # "in":Ljava/io/Reader;
    .restart local v4    # "rsz":I
    :cond_1e
    const/4 v5, 0x0

    :try_start_1f
    invoke-virtual {v3, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_e

    .line 79
    .end local v4    # "rsz":I
    :catchall_23
    move-exception v5

    .line 80
    :try_start_24
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 81
    throw v5
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_28} :catch_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_31

    .line 82
    .end local v2    # "in":Ljava/io/Reader;
    :catch_28
    move-exception v1

    .line 83
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v5, "[Concierge][Featuring]"

    const-string v6, "UnsupportedEncodingException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 84
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    :catch_31
    move-exception v1

    .line 85
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, "[Concierge][Featuring]"

    const-string v6, "IOException Json of metadata has something wrong."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method protected static isCardAvailable(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawJsonResId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 50
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 51
    .local v1, "is":Ljava/io/InputStream;
    const/16 v5, 0x8

    invoke-static {v1, v5}, Lcom/lge/concierge/sdk/ConciergeFeature;->getJsonFromInputStream(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "jsonStr":Ljava/lang/String;
    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 56
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/concierge/sdk/ConciergeFeature;->isCardAvailable(Lorg/json/JSONObject;)Z

    move-result v5

    .line 63
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_21
    return v5

    .line 58
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_22
    new-instance v5, Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;

    invoke-direct {v5}, Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;-><init>()V

    throw v5
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_28} :catch_28

    .line 60
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_28
    move-exception v0

    .line 61
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 63
    const/4 v5, 0x0

    goto :goto_21
.end method

.method public static isCardAvailable(Lorg/json/JSONObject;)Z
    .registers 9
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/concierge/sdk/ConciergeFeature$UnsupportedFeaturingFormat;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 92
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 93
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_d

    .line 115
    const/4 v5, 0x1

    :goto_c
    return v5

    .line 94
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    .line 96
    .local v3, "property":Ljava/lang/String;
    const/4 v0, 0x1

    .line 97
    .local v0, "include":Z
    const-string v6, ".include"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 98
    const/4 v0, 0x1

    .line 99
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".include"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 104
    :cond_2d
    :goto_2d
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "propertyValue":Ljava/lang/String;
    if-eqz v0, :cond_53

    .line 106
    invoke-static {p0, v2, v4}, Lcom/lge/concierge/sdk/ConciergeFeature;->check(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_c

    .line 100
    .end local v4    # "propertyValue":Ljava/lang/String;
    :cond_3a
    const-string v6, ".exclude"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 101
    const/4 v0, 0x0

    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".exclude"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 110
    .restart local v4    # "propertyValue":Ljava/lang/String;
    :cond_53
    invoke-static {p0, v2, v4}, Lcom/lge/concierge/sdk/ConciergeFeature;->check(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_c
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 168
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .local v3, "str":Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 172
    .local v2, "rawLine":Ljava/lang/String;
    :goto_11
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_23
    .catchall {:try_start_11 .. :try_end_14} :catchall_2a

    move-result-object v2

    if-nez v2, :cond_1f

    .line 178
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 173
    :cond_1f
    :try_start_1f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23
    .catchall {:try_start_1f .. :try_end_22} :catchall_2a

    goto :goto_11

    .line 175
    :catch_23
    move-exception v1

    .line 176
    .local v1, "e":Ljava/io/IOException;
    :try_start_24
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2a

    .line 177
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2a
    move-exception v4

    .line 178
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 179
    throw v4
.end method
