.class public final Lcom/lge/provider/GoogleSettingsContract$Partner;
.super Lcom/lge/provider/GoogleSettingsContract$NameValueTable;
.source "GoogleSettingsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/GoogleSettingsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Partner"
.end annotation


# static fields
.field public static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_STORE_VERSION:Ljava/lang/String; = "data_store_version"

.field public static final LOGGING_ID2:Ljava/lang/String; = "logging_id2"

.field public static final MAPS_CLIENT_ID:Ljava/lang/String; = "maps_client_id"

.field public static final MARKET_CHECKIN:Ljava/lang/String; = "market_checkin"

.field public static final MARKET_CLIENT_ID:Ljava/lang/String; = "market_client_id"

.field public static final NETWORK_LOCATION_OPT_IN:Ljava/lang/String; = "network_location_opt_in"

.field public static final RLZ:Ljava/lang/String; = "rlz"

.field public static final USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "use_location_for_services"

.field public static final VOICESEARCH_CLIENT_ID:Ljava/lang/String; = "voicesearch_client_id"

.field public static final YOUTUBE_CLIENT_ID:Ljava/lang/String; = "youtube_client_id"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 207
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 206
    sput-object v0, Lcom/lge/provider/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    .line 282
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/lge/provider/GoogleSettingsContract$NameValueTable;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 164
    invoke-static {p0, p1}, Lcom/lge/provider/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "valString":Ljava/lang/String;
    if-eqz v0, :cond_b

    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_d

    move-result v1

    .line 171
    .local v1, "value":I
    :goto_a
    return v1

    .end local v1    # "value":I
    :cond_b
    move v1, p2

    .line 167
    goto :goto_a

    .line 169
    :catch_d
    move-exception v2

    move v1, p2

    .restart local v1    # "value":I
    goto :goto_a
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 181
    invoke-static {p0, p1}, Lcom/lge/provider/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "valString":Ljava/lang/String;
    if-eqz v0, :cond_b

    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_d

    move-result-wide v2

    .line 188
    .local v2, "value":J
    :goto_a
    return-wide v2

    .end local v2    # "value":J
    :cond_b
    move-wide v2, p2

    .line 184
    goto :goto_a

    .line 186
    :catch_d
    move-exception v1

    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_a
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v8, 0x0

    .line 100
    .local v8, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 102
    .local v6, "c":Landroid/database/Cursor;
    :try_start_2
    sget-object v1, Lcom/lge/provider/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    .line 103
    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 102
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 104
    if-eqz v6, :cond_27

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_26
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_26} :catch_2d
    .catchall {:try_start_2 .. :try_end_26} :catchall_54

    move-result-object v8

    .line 109
    :cond_27
    if-eqz v6, :cond_2c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_2c
    :goto_2c
    return-object v8

    .line 105
    :catch_2d
    move-exception v7

    .line 107
    .local v7, "e":Landroid/database/SQLException;
    :try_start_2e
    const-string v0, "GoogleSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t get key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/provider/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_54

    .line 109
    if-eqz v6, :cond_2c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2c

    .line 108
    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_54
    move-exception v0

    .line 109
    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_5a
    throw v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0, p1}, Lcom/lge/provider/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 125
    move-object v0, p2

    .line 128
    :cond_7
    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 199
    sget-object v0, Lcom/lge/provider/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/lge/provider/GoogleSettingsContract$Partner;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 154
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/lge/provider/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v0, Lcom/lge/provider/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/lge/provider/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
