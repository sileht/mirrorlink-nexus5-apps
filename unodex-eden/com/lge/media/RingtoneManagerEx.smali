.class public Lcom/lge/media/RingtoneManagerEx;
.super Landroid/media/RingtoneManager;
.source "RingtoneManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/RingtoneManagerEx$InterTypeDeclaration;,
        Lcom/lge/media/RingtoneManagerEx$MethodOverride;,
        Lcom/lge/media/RingtoneManagerEx$PrivateAccess;
    }
.end annotation


# static fields
.field static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RingtoneManagerEx"

.field public static final TYPE_ALRAM_TIMER:I = 0x40

.field public static final TYPE_NOTIFICATION_SIM2:I = 0x10

.field public static final TYPE_NOTIFICATION_SIM3:I = 0x100

.field public static final TYPE_RINGFORME:I = 0x200

.field public static final TYPE_RINGTONE_SIM2:I = 0x8

.field public static final TYPE_RINGTONE_SIM3:I = 0x80

.field public static final TYPE_RINGTONE_VIDEOCALL:I = 0x20


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 76
    const-string v1, "title_key"

    aput-object v1, v0, v6

    .line 78
    const-string v1, "_display_name"

    aput-object v1, v0, v7

    .line 73
    sput-object v0, Lcom/lge/media/RingtoneManagerEx;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 83
    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 85
    const-string v1, "title_key"

    aput-object v1, v0, v6

    .line 87
    const-string v1, "_display_name"

    aput-object v1, v0, v7

    .line 82
    sput-object v0, Lcom/lge/media/RingtoneManagerEx;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$interFieldInit$com_lge_media_RingtoneManagerEx$PrivateAccess$com_lge_media_RingtoneManagerEx$mType(Lcom/lge/media/RingtoneManagerEx;)V

    .line 99
    return-void
.end method

.method public static ajc$get$mType(Lcom/lge/media/RingtoneManagerEx;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/lge/media/RingtoneManagerEx;->mType:I

    return v0
.end method

.method public static ajc$set$mType(Lcom/lge/media/RingtoneManagerEx;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/lge/media/RingtoneManagerEx;->mType:I

    return-void
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 202
    :cond_7
    :goto_7
    return-object v2

    .line 200
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x3

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "uriString":Ljava/lang/String;
    const-string v3, "RingtoneManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getActualDefaultRingtoneUri type is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uriString is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz v1, :cond_7

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_7
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .registers 3
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, -0x1

    .line 237
    if-nez p0, :cond_4

    .line 260
    :cond_3
    :goto_3
    return v0

    .line 239
    :cond_4
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 240
    const/4 v0, 0x1

    goto :goto_3

    .line 241
    :cond_e
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 242
    const/4 v0, 0x2

    goto :goto_3

    .line 243
    :cond_18
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 244
    const/4 v0, 0x4

    goto :goto_3

    .line 245
    :cond_22
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_VIDEOCALL_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 246
    const/16 v0, 0x20

    goto :goto_3

    .line 247
    :cond_2d
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM2_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 248
    const/16 v0, 0x8

    goto :goto_3

    .line 249
    :cond_38
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 250
    const/16 v0, 0x10

    goto :goto_3

    .line 251
    :cond_43
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_TIMER_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 252
    const/16 v0, 0x40

    goto :goto_3

    .line 253
    :cond_4e
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM3_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 254
    const/16 v0, 0x80

    goto :goto_3

    .line 255
    :cond_59
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM3_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 256
    const/16 v0, 0x100

    goto :goto_3

    .line 257
    :cond_64
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_RINGFORME_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    const/16 v0, 0x200

    goto :goto_3
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 275
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    .line 276
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 296
    :goto_6
    return-object v0

    .line 277
    :cond_7
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_e

    .line 278
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_6

    .line 279
    :cond_e
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_15

    .line 280
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_6

    .line 281
    :cond_15
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_1c

    .line 282
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_VIDEOCALL_URI:Landroid/net/Uri;

    goto :goto_6

    .line 283
    :cond_1c
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_23

    .line 284
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM2_URI:Landroid/net/Uri;

    goto :goto_6

    .line 285
    :cond_23
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_2a

    .line 286
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

    goto :goto_6

    .line 287
    :cond_2a
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_31

    .line 288
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_TIMER_ALERT_URI:Landroid/net/Uri;

    goto :goto_6

    .line 289
    :cond_31
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_38

    .line 290
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM3_URI:Landroid/net/Uri;

    goto :goto_6

    .line 291
    :cond_38
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3f

    .line 292
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM3_URI:Landroid/net/Uri;

    goto :goto_6

    .line 293
    :cond_3f
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_46

    .line 294
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGFORME_URI:Landroid/net/Uri;

    goto :goto_6

    .line 296
    :cond_46
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static getRingtoneWithStreamType(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 150
    :try_start_0
    new-instance v1, Landroid/media/RingtoneEx;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p2}, Landroid/media/RingtoneEx;-><init>(Landroid/content/Context;ZI)V

    .line 151
    .local v1, "r":Landroid/media/Ringtone;
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 156
    .end local v1    # "r":Landroid/media/Ringtone;
    :goto_9
    return-object v1

    .line 153
    :catch_a
    move-exception v0

    .line 154
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "RingtoneManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to open ringtone "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x0

    goto :goto_9
.end method

.method protected static getSettingForType(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 160
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    .line 161
    const-string v0, "ringtone"

    .line 181
    :goto_6
    return-object v0

    .line 162
    :cond_7
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_e

    .line 163
    const-string v0, "notification_sound"

    goto :goto_6

    .line 164
    :cond_e
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_15

    .line 165
    const-string v0, "alarm_alert"

    goto :goto_6

    .line 166
    :cond_15
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_1c

    .line 167
    const-string v0, "ringtone_videocall"

    goto :goto_6

    .line 168
    :cond_1c
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_23

    .line 169
    const-string v0, "ringtone_sim2"

    goto :goto_6

    .line 170
    :cond_23
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_2a

    .line 171
    const-string v0, "notification_sound_sim2"

    goto :goto_6

    .line 172
    :cond_2a
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_31

    .line 173
    const-string v0, "timer_alert"

    goto :goto_6

    .line 174
    :cond_31
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_38

    .line 175
    const-string v0, "ringtone_sim3"

    goto :goto_6

    .line 176
    :cond_38
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3f

    .line 177
    const-string v0, "notification_sound_sim3"

    goto :goto_6

    .line 178
    :cond_3f
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_46

    .line 179
    const-string v0, "ringforme"

    goto :goto_6

    .line 181
    :cond_46
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 102
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    new-instance v0, Lcom/lge/media/RingtoneManagerEx;

    invoke-direct {v0, p0}, Lcom/lge/media/RingtoneManagerEx;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, "rm":Lcom/lge/media/RingtoneManagerEx;
    invoke-static {v0}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$interMethodDispatch1$com_lge_media_RingtoneManagerEx$PrivateAccess$com_lge_media_RingtoneManagerEx$getInternalRingtones(Lcom/lge/media/RingtoneManagerEx;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/lge/media/RingtoneManagerEx;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 130
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_17

    .line 131
    invoke-static {v0}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$interMethodDispatch1$com_lge_media_RingtoneManagerEx$PrivateAccess$com_lge_media_RingtoneManagerEx$getMediaRingtones(Lcom/lge/media/RingtoneManagerEx;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/lge/media/RingtoneManagerEx;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 134
    :cond_17
    return-object v1
.end method

.method protected static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 105
    if-eqz p1, :cond_11

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 109
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 111
    :cond_d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 115
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 308
    invoke-static {p0}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static final mType_aroundBody0(Lcom/lge/media/RingtoneManagerEx;Lcom/lge/media/RingtoneManagerEx;)I
    .registers 3

    .prologue
    .line 314
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_media_RingtoneManagerEx$PrivateAccess$com_lge_media_RingtoneManagerEx$mType(Lcom/lge/media/RingtoneManagerEx;)I

    move-result v0

    return v0
.end method

.method private static final mType_aroundBody1$advice(Lcom/lge/media/RingtoneManagerEx;Lcom/lge/media/RingtoneManagerEx;Lcom/lge/media/RingtoneManagerEx$PrivateAccess;Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/media/RingtoneManagerEx;
    .param p1, "target"    # Lcom/lge/media/RingtoneManagerEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/media/RingtoneManagerEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/media/RingtoneManagerEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 336
    invoke-static {p3}, Landroid/media/RingtoneManager;->ajc$get$mType(Landroid/media/RingtoneManager;)I

    move-result v0

    return v0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 216
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "setting":Ljava/lang/String;
    const-string v1, "RingtoneManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setActualDefaultRingtoneUri getSettingForType type is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ringtoneUri is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-nez v0, :cond_25

    .line 221
    :goto_24
    return-void

    .line 219
    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 220
    if-eqz p2, :cond_34

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2f
    const/4 v3, -0x3

    .line 219
    invoke-static {v2, v0, v1, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_24

    .line 220
    :cond_34
    const/4 v1, 0x0

    goto :goto_2f
.end method


# virtual methods
.method public ajc$interMethodDispatch2$com_lge_media_RingtoneManagerEx$getInternalRingtones()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$interMethod$com_lge_media_RingtoneManagerEx$PrivateAccess$com_lge_media_RingtoneManagerEx$getInternalRingtones(Lcom/lge/media/RingtoneManagerEx;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public ajc$interMethodDispatch2$com_lge_media_RingtoneManagerEx$getMediaRingtones()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->ajc$interMethod$com_lge_media_RingtoneManagerEx$PrivateAccess$com_lge_media_RingtoneManagerEx$getMediaRingtones(Lcom/lge/media/RingtoneManagerEx;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public inferStreamType()I
    .registers 3

    .prologue
    .line 314
    invoke-static {}, Lcom/lge/media/RingtoneManagerEx$PrivateAccess;->aspectOf()Lcom/lge/media/RingtoneManagerEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, p0, v1}, Lcom/lge/media/RingtoneManagerEx;->mType_aroundBody1$advice(Lcom/lge/media/RingtoneManagerEx;Lcom/lge/media/RingtoneManagerEx;Lcom/lge/media/RingtoneManagerEx$PrivateAccess;Lcom/lge/media/RingtoneManagerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    sparse-switch v0, :sswitch_data_12

    .line 324
    const/4 v0, 0x2

    :goto_d
    return v0

    .line 316
    :sswitch_e
    const/4 v0, 0x4

    goto :goto_d

    .line 321
    :sswitch_10
    const/4 v0, 0x5

    goto :goto_d

    .line 314
    :sswitch_data_12
    .sparse-switch
        0x2 -> :sswitch_10
        0x4 -> :sswitch_e
        0x10 -> :sswitch_10
        0x100 -> :sswitch_10
    .end sparse-switch
.end method
