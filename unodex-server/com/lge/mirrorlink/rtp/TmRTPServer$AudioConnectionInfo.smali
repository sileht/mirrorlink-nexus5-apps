.class public Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;
.super Ljava/lang/Object;
.source "TmRTPServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/rtp/TmRTPServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioConnectionInfo"
.end annotation


# instance fields
.field public audio_in:I

.field public audio_out:I

.field public payload_types:Ljava/lang/String;

.field public phone_audio:I

.field final synthetic this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

.field public voice_control:I


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/rtp/TmRTPServer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/rtp/TmRTPServer;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
