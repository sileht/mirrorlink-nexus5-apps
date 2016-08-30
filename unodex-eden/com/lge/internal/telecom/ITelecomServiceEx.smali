.class public interface abstract Lcom/lge/internal/telecom/ITelecomServiceEx;
.super Ljava/lang/Object;
.source "ITelecomServiceEx.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/telecom/ITelecomServiceEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelMissedCallsNotification(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isReservedCall()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
