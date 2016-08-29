.class Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;
.super Ljava/lang/Object;
.source "CommonAPIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioConnectionInfo"
.end annotation


# instance fields
.field public audio_in:I

.field public audio_out:I

.field public payload_types:Ljava/lang/String;

.field public phone_audio:I

.field final synthetic this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

.field public voice_control:I


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
