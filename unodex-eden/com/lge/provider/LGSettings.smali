.class public Lcom/lge/provider/LGSettings;
.super Ljava/lang/Object;
.source "LGSettings.java"


# static fields
.field public static final DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

.field public static final DEFAULT_NOTIFICATION_SIM3_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGFORME_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_SIM2_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_SIM3_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_VIDEOCALL_URI:Landroid/net/Uri;

.field public static final DEFAULT_TIMER_ALERT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, "ringtone_sim2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM2_URI:Landroid/net/Uri;

    .line 16
    const-string v0, "notification_sound_sim2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

    .line 25
    const-string v0, "ringtone_videocall"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_VIDEOCALL_URI:Landroid/net/Uri;

    .line 31
    const-string v0, "timer_alert"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_TIMER_ALERT_URI:Landroid/net/Uri;

    .line 36
    const-string v0, "ringtone_sim3"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM3_URI:Landroid/net/Uri;

    .line 41
    const-string v0, "notification_sound_sim3"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM3_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "ringforme"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGFORME_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
