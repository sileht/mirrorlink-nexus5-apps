.class public interface abstract Lcom/android/ims/internal/IImsCallSessionListenerEx;
.super Ljava/lang/Object;
.source "IImsCallSessionListenerEx.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSessionListenerEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract callSessionExplicitCallTransferFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract callSessionExplicitCallTransferred(Lcom/android/ims/internal/IImsCallSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
