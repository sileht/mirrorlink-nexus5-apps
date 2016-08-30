.class public interface abstract Landroid/telecom/LGVideoCall;
.super Ljava/lang/Object;
.source "LGVideoCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/LGVideoCall$Callback;
    }
.end annotation


# virtual methods
.method public abstract captureVideo(Ljava/lang/String;I)V
.end method

.method public abstract registerCallbackEx(Landroid/telecom/LGVideoCall$Callback;)V
.end method

.method public abstract registerCallbackEx(Landroid/telecom/LGVideoCall$Callback;Landroid/os/Handler;)V
.end method

.method public abstract setCameraOnOff(I)V
.end method

.method public abstract setDisplaySize(II)V
.end method

.method public abstract setMultitaskingState(I)V
.end method

.method public abstract startBackground()V
.end method

.method public abstract stopBackground()V
.end method

.method public abstract swapDisplay()V
.end method

.method public abstract unregisterCallbackEx(Landroid/telecom/LGVideoCall$Callback;)V
.end method

.method public abstract updateDisplay(I)V
.end method
