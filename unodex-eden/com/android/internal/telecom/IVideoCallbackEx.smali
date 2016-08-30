.class public interface abstract Lcom/android/internal/telecom/IVideoCallbackEx;
.super Ljava/lang/Object;
.source "IVideoCallbackEx.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoCallbackEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract changeMediaDebugInfo(Lcom/android/ims/LGImsCallMediaDebugInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract changePeerDisplayOrientation(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handleCallSessionEventEx(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handleCallSessionResultEvent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
