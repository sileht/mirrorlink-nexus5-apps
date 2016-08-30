.class public Landroid/telecom/LGVideoCall$Callback;
.super Ljava/lang/Object;
.source "LGVideoCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/LGVideoCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallSessionEventEx(I)V
    .registers 2
    .param p1, "event"    # I

    .prologue
    .line 57
    return-void
.end method

.method public onCallSessionResultEvent(II)V
    .registers 3
    .param p1, "event"    # I
    .param p2, "result"    # I

    .prologue
    .line 67
    return-void
.end method

.method public onMediaDebugInfoChanged(Lcom/android/ims/LGImsCallMediaDebugInfo;)V
    .registers 2
    .param p1, "debugInfo"    # Lcom/android/ims/LGImsCallMediaDebugInfo;

    .prologue
    .line 39
    return-void
.end method

.method public onPeerDisplayOrientationChanged(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 48
    return-void
.end method
