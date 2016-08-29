.class public final Lcom/mirrorlink/android/commonapi/Defs$AudioConnections;
.super Ljava/lang/Object;
.source "Defs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/Defs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioConnections"
.end annotation


# static fields
.field public static final INCALL_AUDIO_BT_HFP:I = 0x1

.field public static final INCALL_AUDIO_NONE:I = 0x0

.field public static final INCALL_AUDIO_RTP:I = 0x2

.field public static final MEDIA_AUDIO_IN:Ljava/lang/String; = "MEDIA_AUDIO_IN"

.field public static final MEDIA_AUDIO_OUT:Ljava/lang/String; = "MEDIA_AUDIO_OUT"

.field public static final MEDIA_IN_NONE:I = 0x0

.field public static final MEDIA_IN_RTP:I = 0x2

.field public static final MEDIA_OUT_BT_AD2DP:I = 0x1

.field public static final MEDIA_OUT_NONE:I = 0x0

.field public static final MEDIA_OUT_RTP:I = 0x2

.field public static final PAYLOAD_TYPES:Ljava/lang/String; = "PAYLOAD_TYPES"

.field public static final PHONE_AUDIO:Ljava/lang/String; = "PHONE_AUDIO"

.field public static final VOICE_CONTROL:Ljava/lang/String; = "VOICE_CONTROL"

.field public static final VOICE_CONTROL_BT_HFP:I = 0x1

.field public static final VOICE_CONTROL_NONE:I = 0x0

.field public static final VOICE_CONTROL_RTP:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
